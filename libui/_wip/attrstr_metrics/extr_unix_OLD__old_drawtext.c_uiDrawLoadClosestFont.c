
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Size; size_t Weight; size_t Italic; size_t Stretch; int Family; } ;
typedef TYPE_1__ uiDrawTextFontDescriptor ;
typedef int uiDrawTextFont ;
typedef int gint ;
typedef int PangoFontDescription ;
typedef int PangoFont ;


 int FALSE ;
 int PANGO_SCALE ;
 int * mkTextFont (int *,int ) ;
 int * pangoDescToPangoFont (int *) ;
 int * pangoItalics ;
 int * pangoStretches ;
 int * pangoWeights ;
 int pango_font_description_free (int *) ;
 int * pango_font_description_new () ;
 int pango_font_description_set_family (int *,int ) ;
 int pango_font_description_set_size (int *,int ) ;
 int pango_font_description_set_stretch (int *,int ) ;
 int pango_font_description_set_style (int *,int ) ;
 int pango_font_description_set_weight (int *,int ) ;

uiDrawTextFont *uiDrawLoadClosestFont(const uiDrawTextFontDescriptor *desc)
{
 PangoFont *f;
 PangoFontDescription *pdesc;

 pdesc = pango_font_description_new();
 pango_font_description_set_family(pdesc,
  desc->Family);
 pango_font_description_set_size(pdesc,
  (gint) (desc->Size * PANGO_SCALE));
 pango_font_description_set_weight(pdesc,
  pangoWeights[desc->Weight]);
 pango_font_description_set_style(pdesc,
  pangoItalics[desc->Italic]);
 pango_font_description_set_stretch(pdesc,
  pangoStretches[desc->Stretch]);
 f = pangoDescToPangoFont(pdesc);
 pango_font_description_free(pdesc);
 return mkTextFont(f, FALSE);
}
