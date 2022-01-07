
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct example {char* name; int * key; int * mouse; int draw; int panel; } ;
struct TYPE_2__ {int Align; int * DefaultFont; int String; } ;


 int attrstr ;
 struct example basicExample ;
 int defaultFont ;
 int draw ;
 void* newCheckbox (char*) ;
 int panel ;
 TYPE_1__ params ;
 void* showExtents ;
 void* showLineBounds ;
 void* showLineGuides ;
 int text ;
 int uiControl (int ) ;
 int uiDrawTextAlignLeft ;
 int uiNewAttributedString (int ) ;
 int uiNewVerticalBox () ;

struct example *mkBasicExample(void)
{
 panel = uiNewVerticalBox();
 showExtents = newCheckbox("Show Layout Extents");
 showLineBounds = newCheckbox("Show Line Bounds");
 showLineGuides = newCheckbox("Show Line Guides");

 basicExample.name = "Basic Paragraph of Text";
 basicExample.panel = uiControl(panel);
 basicExample.draw = draw;
 basicExample.mouse = ((void*)0);
 basicExample.key = ((void*)0);

 attrstr = uiNewAttributedString(text);
 params.String = attrstr;
 params.DefaultFont = &defaultFont;
 params.Align = uiDrawTextAlignLeft;

 return &basicExample;
}
