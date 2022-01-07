
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uiBox ;
struct TYPE_3__ {int KeyEvent; int DragBroken; int MouseCrossed; int MouseEvent; int Draw; } ;


 int * addLeading ;
 int handlerDragBroken ;
 int handlerDraw ;
 int handlerKeyEvent ;
 int handlerMouseCrossed ;
 int handlerMouseEvent ;
 int * newHorizontalBox () ;
 int * newVerticalBox () ;
 int onTextApply ;
 int * textApply ;
 int * textArea ;
 TYPE_1__ textAreaHandler ;
 int * textFont ;
 int * textItalic ;
 int * textSize ;
 int * textSmallCaps ;
 int * textStretch ;
 int * textString ;
 int * textWeight ;
 int * textWidth ;
 int uiBoxAppend (int *,int ,int) ;
 int uiButtonOnClicked (int *,int ,int *) ;
 int uiCheckboxSetChecked (int *,int) ;
 int uiComboboxAppend (int *,char*) ;
 int uiComboboxSetSelected (int *,int ) ;
 int uiControl (int *) ;
 int uiDrawTextItalicNormal ;
 int uiDrawTextStretchNormal ;
 int uiDrawTextWeightNormal ;
 int uiEntrySetText (int *,char*) ;
 int * uiNewArea (TYPE_1__*) ;
 int * uiNewButton (char*) ;
 int * uiNewCheckbox (char*) ;
 int * uiNewCombobox () ;
 int * uiNewEntry () ;

uiBox *makePage9(void)
{
 uiBox *page9;
 uiBox *vbox;
 uiBox *hbox;

 page9 = newVerticalBox();
 vbox = page9;

 hbox = newHorizontalBox();
 uiBoxAppend(vbox, uiControl(hbox), 0);

 textString = uiNewEntry();

 uiEntrySetText(textString, "Enter text here");
 uiBoxAppend(hbox, uiControl(textString), 1);

 textFont = uiNewEntry();
 uiEntrySetText(textFont, "Arial");
 uiBoxAppend(hbox, uiControl(textFont), 1);

 textSize = uiNewEntry();
 uiEntrySetText(textSize, "10");
 uiBoxAppend(hbox, uiControl(textSize), 1);

 hbox = newHorizontalBox();
 uiBoxAppend(vbox, uiControl(hbox), 0);

 textWeight = uiNewCombobox();
 uiComboboxAppend(textWeight, "Thin");
 uiComboboxAppend(textWeight, "Ultra Light");
 uiComboboxAppend(textWeight, "Light");
 uiComboboxAppend(textWeight, "Book");
 uiComboboxAppend(textWeight, "Normal");
 uiComboboxAppend(textWeight, "Medium");
 uiComboboxAppend(textWeight, "Semi Bold");
 uiComboboxAppend(textWeight, "Bold");
 uiComboboxAppend(textWeight, "Ultra Bold");
 uiComboboxAppend(textWeight, "Heavy");
 uiComboboxAppend(textWeight, "Ultra Heavy");
 uiComboboxSetSelected(textWeight, uiDrawTextWeightNormal);
 uiBoxAppend(hbox, uiControl(textWeight), 1);

 textItalic = uiNewCombobox();
 uiComboboxAppend(textItalic, "Normal");
 uiComboboxAppend(textItalic, "Oblique");
 uiComboboxAppend(textItalic, "Italic");
 uiComboboxSetSelected(textItalic, uiDrawTextItalicNormal);
 uiBoxAppend(hbox, uiControl(textItalic), 1);

 textSmallCaps = uiNewCheckbox("Small Caps");
 uiBoxAppend(hbox, uiControl(textSmallCaps), 1);

 hbox = newHorizontalBox();
 uiBoxAppend(vbox, uiControl(hbox), 0);

 textStretch = uiNewCombobox();
 uiComboboxAppend(textStretch, "Ultra Condensed");
 uiComboboxAppend(textStretch, "Extra Condensed");
 uiComboboxAppend(textStretch, "Condensed");
 uiComboboxAppend(textStretch, "Semi Condensed");
 uiComboboxAppend(textStretch, "Normal");
 uiComboboxAppend(textStretch, "Semi Expanded");
 uiComboboxAppend(textStretch, "Expanded");
 uiComboboxAppend(textStretch, "Extra Expanded");
 uiComboboxAppend(textStretch, "Ultra Expanded");
 uiComboboxSetSelected(textStretch, uiDrawTextStretchNormal);
 uiBoxAppend(hbox, uiControl(textStretch), 1);

 textWidth = uiNewEntry();
 uiEntrySetText(textWidth, "-1");
 uiBoxAppend(hbox, uiControl(textWidth), 1);

 hbox = newHorizontalBox();
 uiBoxAppend(vbox, uiControl(hbox), 0);

 textApply = uiNewButton("Apply");
 uiButtonOnClicked(textApply, onTextApply, ((void*)0));
 uiBoxAppend(hbox, uiControl(textApply), 1);

 addLeading = uiNewCheckbox("Add Leading");
 uiCheckboxSetChecked(addLeading, 1);
 uiBoxAppend(hbox, uiControl(addLeading), 0);

 textAreaHandler.Draw = handlerDraw;
 textAreaHandler.MouseEvent = handlerMouseEvent;
 textAreaHandler.MouseCrossed = handlerMouseCrossed;
 textAreaHandler.DragBroken = handlerDragBroken;
 textAreaHandler.KeyEvent = handlerKeyEvent;
 textArea = uiNewArea(&textAreaHandler);
 uiBoxAppend(vbox, uiControl(textArea), 1);

 return page9;
}
