
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uiFontDescriptor ;
struct TYPE_5__ {scalar_t__ Align; int Width; int * DefaultFont; int String; } ;
typedef TYPE_1__ uiDrawTextLayoutParams ;
typedef int uiDrawTextLayout ;
typedef scalar_t__ uiDrawTextAlign ;
typedef int uiAreaHandler ;
struct TYPE_6__ {int Context; int AreaWidth; } ;
typedef TYPE_2__ uiAreaDrawParams ;
typedef int uiArea ;


 int alignment ;
 int attrstr ;
 int fontButton ;
 scalar_t__ uiComboboxSelected (int ) ;
 int uiDrawFreeTextLayout (int *) ;
 int * uiDrawNewTextLayout (TYPE_1__*) ;
 int uiDrawText (int ,int *,int ,int ) ;
 int uiFontButtonFont (int ,int *) ;
 int uiFreeFontButtonFont (int *) ;

__attribute__((used)) static void handlerDraw(uiAreaHandler *a, uiArea *area, uiAreaDrawParams *p)
{
 uiDrawTextLayout *textLayout;
 uiFontDescriptor defaultFont;
 uiDrawTextLayoutParams params;

 params.String = attrstr;
 uiFontButtonFont(fontButton, &defaultFont);
 params.DefaultFont = &defaultFont;
 params.Width = p->AreaWidth;
 params.Align = (uiDrawTextAlign) uiComboboxSelected(alignment);
 textLayout = uiDrawNewTextLayout(&params);
 uiDrawText(p->Context, textLayout, 0, 0);
 uiDrawFreeTextLayout(textLayout);
 uiFreeFontButtonFont(&defaultFont);
}
