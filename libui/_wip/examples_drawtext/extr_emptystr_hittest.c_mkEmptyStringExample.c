
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct example {char* name; int key; int mouse; int draw; int panel; } ;
struct TYPE_2__ {int Align; int * DefaultFont; int String; } ;


 int attrstr ;
 int caretLabel ;
 int changeFont ;
 int changeTextAlign ;
 int defaultFont ;
 int draw ;
 int fontButton ;
 struct example hitTestExample ;
 int key ;
 int mouse ;
 int newCheckbox (int ,char*) ;
 int panel ;
 TYPE_1__ params ;
 int showLineBounds ;
 int text ;
 int textAlign ;
 int uiBoxAppend (int ,int ,int) ;
 int uiComboboxAppend (int ,char*) ;
 int uiComboboxOnSelected (int ,int ,int *) ;
 int uiControl (int ) ;
 int uiDrawTextAlignLeft ;
 int uiFontButtonOnChanged (int ,int ,int *) ;
 int uiNewAttributedString (int ) ;
 int uiNewCombobox () ;
 int uiNewFontButton () ;
 int uiNewHorizontalBox () ;
 int uiNewLabel (char*) ;
 int uiNewVerticalBox () ;
 int vbox ;

struct example *mkEmptyStringExample(void)
{
 panel = uiNewHorizontalBox();
 vbox = uiNewVerticalBox();

 uiBoxAppend(panel, uiControl(vbox), 1);
 caretLabel = uiNewLabel("Caret information is shown here");
 uiBoxAppend(vbox, uiControl(caretLabel), 0);
 showLineBounds = newCheckbox(vbox, "Show Line Bounds (for debugging metrics)");
 vbox = uiNewVerticalBox();
 uiBoxAppend(panel, uiControl(vbox), 0);
 fontButton = uiNewFontButton();
 uiFontButtonOnChanged(fontButton, changeFont, ((void*)0));

 uiBoxAppend(vbox, uiControl(fontButton), 0);
 textAlign = uiNewCombobox();

 uiComboboxAppend(textAlign, "Left");
 uiComboboxAppend(textAlign, "Center");
 uiComboboxAppend(textAlign, "Right");
 uiComboboxOnSelected(textAlign, changeTextAlign, ((void*)0));
 uiBoxAppend(vbox, uiControl(textAlign), 0);

 hitTestExample.name = "Empty String";
 hitTestExample.panel = uiControl(panel);
 hitTestExample.draw = draw;
 hitTestExample.mouse = mouse;
 hitTestExample.key = key;

 attrstr = uiNewAttributedString(text);
 params.String = attrstr;
 params.DefaultFont = &defaultFont;
 params.Align = uiDrawTextAlignLeft;

 return &hitTestExample;
}
