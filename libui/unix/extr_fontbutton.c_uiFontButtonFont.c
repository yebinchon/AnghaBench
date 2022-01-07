
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uiFontDescriptor ;
struct TYPE_3__ {int fc; } ;
typedef TYPE_1__ uiFontButton ;
typedef int PangoFontDescription ;


 int * gtk_font_chooser_get_font_desc (int ) ;
 int pango_font_description_free (int *) ;
 int uiprivFontDescriptorFromPangoFontDescription (int *,int *) ;

void uiFontButtonFont(uiFontButton *b, uiFontDescriptor *desc)
{
 PangoFontDescription *pdesc;

 pdesc = gtk_font_chooser_get_font_desc(b->fc);
 uiprivFontDescriptorFromPangoFontDescription(pdesc, desc);

 pango_font_description_free(pdesc);
}
