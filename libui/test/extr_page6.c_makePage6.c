
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uiButton ;
typedef int uiBox ;
typedef int uiAreaHandler ;
struct TYPE_3__ {int KeyEvent; int DragBroken; int MouseCrossed; int MouseEvent; int Draw; } ;
struct TYPE_4__ {TYPE_1__ ah; } ;


 int * area ;
 int enableArea ;
 TYPE_2__ handler ;
 int handlerDragBroken ;
 int handlerDraw ;
 int handlerKeyEvent ;
 int handlerMouseCrossed ;
 int handlerMouseEvent ;
 int * newHorizontalBox () ;
 int * newVerticalBox () ;
 int populateComboboxWithTests (int *) ;
 int redraw ;
 int shouldntHappen ;
 int * swallowKeys ;
 int uiBoxAppend (int *,int ,int) ;
 int uiButtonOnClicked (int *,int ,int *) ;
 int uiComboboxOnSelected (int *,int ,int *) ;
 int uiComboboxSetSelected (int *,int ) ;
 int uiControl (int *) ;
 int * uiNewArea (int *) ;
 int * uiNewButton (char*) ;
 int * uiNewCheckbox (char*) ;
 int * uiNewCombobox () ;
 int * which ;

uiBox *makePage6(void)
{
 uiBox *page6;
 uiBox *hbox;
 uiButton *button;

 handler.ah.Draw = handlerDraw;
 handler.ah.MouseEvent = handlerMouseEvent;
 handler.ah.MouseCrossed = handlerMouseCrossed;
 handler.ah.DragBroken = handlerDragBroken;
 handler.ah.KeyEvent = handlerKeyEvent;

 page6 = newVerticalBox();

 hbox = newHorizontalBox();
 uiBoxAppend(page6, uiControl(hbox), 0);

 which = uiNewCombobox();
 populateComboboxWithTests(which);

 uiComboboxOnSelected(which, shouldntHappen, ((void*)0));
 uiComboboxSetSelected(which, 0);
 uiComboboxOnSelected(which, redraw, ((void*)0));
 uiBoxAppend(hbox, uiControl(which), 0);

 area = uiNewArea((uiAreaHandler *) (&handler));
 uiBoxAppend(page6, uiControl(area), 1);

 hbox = newHorizontalBox();
 uiBoxAppend(page6, uiControl(hbox), 0);

 swallowKeys = uiNewCheckbox("Consider key events handled");
 uiBoxAppend(hbox, uiControl(swallowKeys), 1);

 button = uiNewButton("Enable");
 uiButtonOnClicked(button, enableArea, button);
 uiBoxAppend(hbox, uiControl(button), 0);

 button = uiNewButton("Disable");
 uiButtonOnClicked(button, enableArea, ((void*)0));
 uiBoxAppend(hbox, uiControl(button), 0);

 return page6;
}
