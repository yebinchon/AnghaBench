
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uiDrawTextFontDescriptor ;
struct TYPE_3__ {int f; } ;
typedef TYPE_1__ uiDrawTextFont ;
typedef int PangoFontDescription ;


 int * pango_font_describe (int ) ;
 int pango_font_description_free (int *) ;

void uiDrawTextFontDescribe(uiDrawTextFont *font, uiDrawTextFontDescriptor *desc)
{
 PangoFontDescription *pdesc;


 pdesc = pango_font_describe(font->f);



 pango_font_description_free(pdesc);
}
