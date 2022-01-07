
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uiAreaHandler ;
struct TYPE_3__ {int Context; int AreaHeight; int AreaWidth; } ;
typedef TYPE_1__ uiAreaDrawParams ;
typedef int uiArea ;
struct tareas {int close; int bottomrightresize; int bottomleftresize; int toprightresize; int topleftresize; int bottomresize; int rightresize; int topresize; int leftresize; int alsomove; int move; } ;


 int drawtrect (int ,int ,double,double,double) ;
 int filltareas (int ,int ,struct tareas*) ;

__attribute__((used)) static void handlerDraw(uiAreaHandler *a, uiArea *area, uiAreaDrawParams *p)
{
 struct tareas ta;

 filltareas(p->AreaWidth, p->AreaHeight, &ta);
 drawtrect(p->Context, ta.move, 0, 0.5, 0);
 drawtrect(p->Context, ta.alsomove, 0, 0.5, 0);
 drawtrect(p->Context, ta.leftresize, 0, 0, 0.5);
 drawtrect(p->Context, ta.topresize, 0, 0, 0.5);
 drawtrect(p->Context, ta.rightresize, 0, 0, 0.5);
 drawtrect(p->Context, ta.bottomresize, 0, 0, 0.5);
 drawtrect(p->Context, ta.topleftresize, 0, 0.5, 0.5);
 drawtrect(p->Context, ta.toprightresize, 0, 0.5, 0.5);
 drawtrect(p->Context, ta.bottomleftresize, 0, 0.5, 0.5);
 drawtrect(p->Context, ta.bottomrightresize, 0, 0.5, 0.5);
 drawtrect(p->Context, ta.close, 0.5, 0, 0);


}
