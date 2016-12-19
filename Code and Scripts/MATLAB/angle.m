m1=[-1 2 0;0 0 1; 2 1 0];
m2=[-5 10 8;8 -16 25; 2 1 0];
m1(1,:)=m1(1,:)./norm(m1(1,:));
m1(2,:)=m1(2,:)./norm(m1(2,:));
m1(3,:)=m1(3,:)./norm(m1(3,:));

m2(1,:)=m2(1,:)./norm(m2(1,:));
m2(2,:)=m2(2,:)./norm(m2(2,:));
m2(3,:)=m2(3,:)./norm(m2(3,:));

m=m1*pinv(m2);

m(1,:)=m(1,:)./norm(m(1,:));
m(2,:)=m(2,:)./norm(m(2,:));
m(3,:)=m(3,:)./norm(m(3,:));

a=vrrotmat2vec(m);
sol=a(4)*180/pi