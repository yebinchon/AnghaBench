
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uiGroup ;
typedef int uiAreaHandler ;
struct TYPE_3__ {int KeyEvent; int DragBroken; int MouseCrossed; int MouseEvent; int Draw; } ;
struct TYPE_4__ {TYPE_1__ ah; } ;


 int area ;
 int areaSize ;
 TYPE_2__ handler ;
 int handlerDragBroken ;
 int handlerDraw ;
 int handlerKeyEvent ;
 int handlerMouseCrossed ;
 int handlerMouseEvent ;
 int * newGroup (char*) ;
 int uiControl (int ) ;
 int uiGroupSetChild (int *,int ) ;
 int uiNewScrollingArea (int *,int ,int ) ;

uiGroup *makePage7c(void)
{
 uiGroup *group;

 handler.ah.Draw = handlerDraw;
 handler.ah.MouseEvent = handlerMouseEvent;
 handler.ah.MouseCrossed = handlerMouseCrossed;
 handler.ah.DragBroken = handlerDragBroken;
 handler.ah.KeyEvent = handlerKeyEvent;

 group = newGroup("Scrolling Drawing Test");

 area = uiNewScrollingArea((uiAreaHandler *) (&handler),
  areaSize, areaSize);
 uiGroupSetChild(group, uiControl(area));

 return group;
}
