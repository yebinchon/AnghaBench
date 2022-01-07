
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uiBox ;
struct TYPE_3__ {int KeyEvent; int DragBroken; int MouseCrossed; int MouseEvent; int Draw; } ;


 int handlerDragBroken ;
 int handlerDraw ;
 int handlerKeyEvent ;
 int handlerMouseCrossed ;
 int handlerMouseEvent ;
 int * newHorizontalBox () ;
 int * newVerticalBox () ;
 int * noZ ;
 int onColorChanged ;
 int onFontChanged ;
 int onNoZ ;
 int * textApply ;
 int * textArea ;
 TYPE_1__ textAreaHandler ;
 int * textColorButton ;
 int * textFontButton ;
 int * textString ;
 int * textWidth ;
 int uiBoxAppend (int *,int ,int) ;
 int uiCheckboxOnToggled (int *,int ,int *) ;
 int uiColorButtonOnChanged (int *,int ,int *) ;
 int uiControl (int *) ;
 int uiEntrySetText (int *,char*) ;
 int uiFontButtonOnChanged (int *,int ,int *) ;
 int * uiNewArea (TYPE_1__*) ;
 int * uiNewButton (char*) ;
 int * uiNewCheckbox (char*) ;
 int * uiNewColorButton () ;
 int * uiNewEntry () ;
 int * uiNewFontButton () ;

uiBox *makePage10(void)
{
 uiBox *page10;
 uiBox *vbox;
 uiBox *hbox;

 page10 = newVerticalBox();
 vbox = page10;

 hbox = newHorizontalBox();
 uiBoxAppend(vbox, uiControl(hbox), 0);

 textString = uiNewEntry();

 uiEntrySetText(textString, "Enter text here");
 uiBoxAppend(hbox, uiControl(textString), 1);

 textFontButton = uiNewFontButton();
 uiFontButtonOnChanged(textFontButton, onFontChanged, ((void*)0));
 uiBoxAppend(hbox, uiControl(textFontButton), 1);

 textColorButton = uiNewColorButton();
 uiColorButtonOnChanged(textColorButton, onColorChanged, ((void*)0));
 uiBoxAppend(hbox, uiControl(textColorButton), 1);

 hbox = newHorizontalBox();
 uiBoxAppend(vbox, uiControl(hbox), 0);

 textApply = uiNewButton("Apply");
 uiBoxAppend(hbox, uiControl(textApply), 1);

 textWidth = uiNewEntry();
 uiEntrySetText(textWidth, "-1");
 uiBoxAppend(hbox, uiControl(textWidth), 1);

 noZ = uiNewCheckbox("No Z Color");
 uiCheckboxOnToggled(noZ, onNoZ, ((void*)0));
 uiBoxAppend(hbox, uiControl(noZ), 0);

 textAreaHandler.Draw = handlerDraw;
 textAreaHandler.MouseEvent = handlerMouseEvent;
 textAreaHandler.MouseCrossed = handlerMouseCrossed;
 textAreaHandler.DragBroken = handlerDragBroken;
 textAreaHandler.KeyEvent = handlerKeyEvent;
 textArea = uiNewArea(&textAreaHandler);
 uiBoxAppend(vbox, uiControl(textArea), 1);


 hbox = newHorizontalBox();
 uiBoxAppend(vbox, uiControl(hbox), 0);
 uiBoxAppend(hbox, uiControl(uiNewFontButton()), 1);
 uiBoxAppend(hbox, uiControl(uiNewColorButton()), 1);

 return page10;
}
