
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
 int checkboxToggled ;
 int entryChanged ;
 TYPE_2__ handler ;
 int handlerDragBroken ;
 int handlerDraw ;
 int handlerKeyEvent ;
 int handlerMouseCrossed ;
 int handlerMouseEvent ;
 int * negative ;
 int * newGroup (char*) ;
 int * newHorizontalBox () ;
 int * newVerticalBox () ;
 int * radians ;
 int * startAngle ;
 int * sweep ;
 int uiBoxAppend (int *,int ,int) ;
 int uiCheckboxOnToggled (int *,int ,int *) ;
 int uiControl (int *) ;
 int uiEntryOnChanged (int *,int ,int *) ;
 int uiGroupSetChild (int *,int ) ;
 int * uiNewArea (int *) ;
 int * uiNewCheckbox (char*) ;
 int * uiNewEntry () ;
 int * uiNewLabel (char*) ;

uiGroup *makePage7a(void)
{
 uiGroup *group;
 uiBox *box, *box2;

 handler.ah.Draw = handlerDraw;
 handler.ah.MouseEvent = handlerMouseEvent;
 handler.ah.MouseCrossed = handlerMouseCrossed;
 handler.ah.DragBroken = handlerDragBroken;
 handler.ah.KeyEvent = handlerKeyEvent;

 group = newGroup("Arc Test");

 box = newVerticalBox();
 uiGroupSetChild(group, uiControl(box));

 area = uiNewArea((uiAreaHandler *) (&handler));
 uiBoxAppend(box, uiControl(area), 1);

 box2 = newHorizontalBox();
 uiBoxAppend(box, uiControl(box2), 0);

 uiBoxAppend(box2, uiControl(uiNewLabel("Start Angle")), 0);
 startAngle = uiNewEntry();
 uiEntryOnChanged(startAngle, entryChanged, ((void*)0));
 uiBoxAppend(box2, uiControl(startAngle), 1);

 box2 = newHorizontalBox();
 uiBoxAppend(box, uiControl(box2), 0);

 uiBoxAppend(box2, uiControl(uiNewLabel("Sweep")), 0);
 sweep = uiNewEntry();
 uiEntryOnChanged(sweep, entryChanged, ((void*)0));
 uiBoxAppend(box2, uiControl(sweep), 1);

 negative = uiNewCheckbox("Negative");
 uiCheckboxOnToggled(negative, checkboxToggled, ((void*)0));
 uiBoxAppend(box, uiControl(negative), 0);

 radians = uiNewCheckbox("Radians");
 uiCheckboxOnToggled(radians, checkboxToggled, ((void*)0));
 uiBoxAppend(box, uiControl(radians), 0);

 return group;
}
