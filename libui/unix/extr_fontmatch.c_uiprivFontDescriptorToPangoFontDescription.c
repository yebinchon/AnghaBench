
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Stretch; int Italic; int Weight; int Size; int Family; } ;
typedef TYPE_1__ uiFontDescriptor ;
typedef int PangoFontDescription ;


 int * pango_font_description_new () ;
 int pango_font_description_set_family (int *,int ) ;
 int pango_font_description_set_size (int *,int ) ;
 int pango_font_description_set_stretch (int *,int ) ;
 int pango_font_description_set_style (int *,int ) ;
 int pango_font_description_set_weight (int *,int ) ;
 int pango_units_from_double (int ) ;
 int uiprivItalicToPangoStyle (int ) ;
 int uiprivStretchToPangoStretch (int ) ;
 int uiprivWeightToPangoWeight (int ) ;

PangoFontDescription *uiprivFontDescriptorToPangoFontDescription(const uiFontDescriptor *uidesc)
{
 PangoFontDescription *desc;

 desc = pango_font_description_new();
 pango_font_description_set_family(desc, uidesc->Family);

 pango_font_description_set_size(desc, pango_units_from_double(uidesc->Size));
 pango_font_description_set_weight(desc, uiprivWeightToPangoWeight(uidesc->Weight));
 pango_font_description_set_style(desc, uiprivItalicToPangoStyle(uidesc->Italic));
 pango_font_description_set_stretch(desc, uiprivStretchToPangoStretch(uidesc->Stretch));
 return desc;
}
