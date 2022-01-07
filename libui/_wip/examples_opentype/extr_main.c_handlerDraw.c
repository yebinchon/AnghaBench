
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Align; int Width; int * DefaultFont; int String; } ;
typedef TYPE_1__ uiDrawTextLayoutParams ;
typedef int uiDrawTextLayout ;
typedef int uiDrawFontDescriptor ;
typedef int uiAreaHandler ;
struct TYPE_7__ {int Context; int AreaWidth; } ;
typedef TYPE_2__ uiAreaDrawParams ;
typedef int uiArea ;


 int attrstr ;
 int fontButton ;
 int memset (TYPE_1__*,int ,int) ;
 int uiDrawFreeTextLayout (int *) ;
 int * uiDrawNewTextLayout (TYPE_1__*) ;
 int uiDrawText (int ,int *,int ,int ) ;
 int uiDrawTextAlignLeft ;
 int uiFontButtonFont (int ,int *) ;

__attribute__((used)) static void handlerDraw(uiAreaHandler *a, uiArea *area, uiAreaDrawParams *p)
{
 uiDrawTextLayout *layout;
 uiDrawTextLayoutParams lp;
 uiDrawFontDescriptor desc;

 memset(&lp, 0, sizeof (uiDrawTextLayoutParams));
 lp.String = attrstr;
 uiFontButtonFont(fontButton, &desc);
 lp.DefaultFont = &desc;
 lp.Width = p->AreaWidth;
 lp.Align = uiDrawTextAlignLeft;
 layout = uiDrawNewTextLayout(&lp);
 uiDrawText(p->Context, layout, 0, 0);
 uiDrawFreeTextLayout(layout);
}
