
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct example {char* name; int * key; int * mouse; int draw; int panel; } ;
struct TYPE_2__ {int Align; int * DefaultFont; int String; } ;


 struct example attributesExample ;
 int attrstr ;
 int changeFont ;
 int defaultFont ;
 int draw ;
 int fontButton ;
 int newCheckbox (char*) ;
 int panel ;
 TYPE_1__ params ;
 int setupAttributedString () ;
 int showLineBounds ;
 int uiBoxAppend (int ,int ,int ) ;
 int uiControl (int ) ;
 int uiDrawTextAlignLeft ;
 int uiFontButtonOnChanged (int ,int ,int *) ;
 int uiNewFontButton () ;
 int uiNewVerticalBox () ;

struct example *mkAttributesExample(void)
{
 panel = uiNewVerticalBox();
 showLineBounds = newCheckbox("Show Line Bounds");
 fontButton = uiNewFontButton();
 uiFontButtonOnChanged(fontButton, changeFont, ((void*)0));

 uiBoxAppend(panel, uiControl(fontButton), 0);

 attributesExample.name = "Attributed Text";
 attributesExample.panel = uiControl(panel);
 attributesExample.draw = draw;
 attributesExample.mouse = ((void*)0);
 attributesExample.key = ((void*)0);

 setupAttributedString();
 params.String = attrstr;
 params.DefaultFont = &defaultFont;
 params.Align = uiDrawTextAlignLeft;

 return &attributesExample;
}
