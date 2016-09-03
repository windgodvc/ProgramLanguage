h0=figure('toolbar','none',...
    'position',[198 56 408 468],...
    'name','ʵ��53');
h1=axes('parent',h0,...
    'position',[0.15 0.5 0.7 0.5],...
    'visible','off');
[x,y]=meshgrid(-8:0.5:8);
r=sqrt(x.^2+y.^2)+eps;
z=sin(r)./r;
fh=surf(x,y,z);
shading interp
view([-60 30])
camlight left
lightk=light('position',[0 -2 1]);
button1=uicontrol('parent',h0,...
    'style','pushbutton',...
    'string','���ù���',...
    'position',[80 60 70 30],...
    'callback',[...
        'an1=inputdlg(''������Դ��X������'');,',...
        'k1=str2num(an1{1});,',...
        'an2=inputdlg(''������Դ��Y������'');,',...
        'k2=str2num(an2{1});,',...
        'an3=inputdlg(''������Դ��Z������'');,',...
        'k3=str2num(an3{1});,',...
        'set(lightk,''position'',[k1 k2 k3]);,',...
        'set(edit1,''string'',[''['',num2str(k1),'' '',num2str(k2),'' '',num2str(k3),'']'']);']);
button2=uicontrol('parent',h0,...
    'style','pushbutton',...
    'string','�ر�',...
    'position',[250 60 70 30],...
    'callback','close');
edit1=uicontrol('parent',h0,...
    'style','edit',...
    'max',2,...
    'min',0,...
    'fontsize',15,...
    'backgroundcolor',[1 1 1],...
    'string','[0 -2 1]',...
    'position',[80 110 220 30]);
text1=uicontrol('parent',h0,...
    'style','text',...
    'backgroundcolor',[0.75 0.75 0.75],...
    'fontsize',15,...
    'string','������Դ����',...
    'position',[80 140 220 30]);