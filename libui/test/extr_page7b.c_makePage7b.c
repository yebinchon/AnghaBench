
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uiGroup ;
typedef int uiBox ;
typedef int uiAreaHandler ;
struct TYPE_3__ {int KeyEvent; int DragBroken; int MouseCrossed; int MouseEvent; int Draw; } ;
struct TYPE_4__ {TYPE_1__ ah; } ;


 int * area ;
 TYPE_2__ handler ;
 int handlerDragBroken ;
 int handlerDraw ;
 int handlerKeyEvent ;
 int handlerMouseCrossed ;
 int handlerMouseEvent ;
 int * label ;
 int * newGroup (char*) ;
 int * newVerticalBox () ;
 int uiBoxAppend (int *,int ,int) ;
 int uiControl (int *) ;
 int uiGroupSetChild (int *,int ) ;
 int * uiNewCheckbox (char*) ;
 int * uiNewScrollingArea (int *,int,int) ;

uiGroup *makePage7b(void)
{
 uiGroup *group;
 uiBox *box;

 handler.ah.Draw = handlerDraw;
 handler.ah.MouseEvent = handlerMouseEvent;
 handler.ah.MouseCrossed = handlerMouseCrossed;
 handler.ah.DragBroken = handlerDragBroken;
 handler.ah.KeyEvent = handlerKeyEvent;

 group = newGroup("Scrolling Mouse Test");

 box = newVerticalBox();
 uiGroupSetChild(group, uiControl(box));

 area = uiNewScrollingArea((uiAreaHandler *) (&handler), 5000, 5000);
 uiBoxAppend(box, uiControl(area), 1);

 label = uiNewCheckbox("");
 uiBoxAppend(box, uiControl(label), 0);

 return group;
}
