
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t Italic; size_t Stretch; int Size; int Weight; int Family; } ;
typedef TYPE_1__ uiFontDescriptor ;
typedef scalar_t__ PangoStyle ;
typedef scalar_t__ PangoStretch ;
typedef int PangoFontDescription ;


 scalar_t__* pangoItalics ;
 scalar_t__* pangoStretches ;
 int pango_font_description_get_family (int *) ;
 int pango_font_description_get_size (int *) ;
 scalar_t__ pango_font_description_get_stretch (int *) ;
 scalar_t__ pango_font_description_get_style (int *) ;
 int pango_font_description_get_weight (int *) ;
 int pango_units_to_double (int ) ;
 size_t uiTextItalicItalic ;
 size_t uiTextItalicNormal ;
 size_t uiTextStretchUltraCondensed ;
 size_t uiTextStretchUltraExpanded ;
 int uiUnixStrdupText (int ) ;

void uiprivFontDescriptorFromPangoFontDescription(PangoFontDescription *pdesc, uiFontDescriptor *uidesc)
{
 PangoStyle pitalic;
 PangoStretch pstretch;

 uidesc->Family = uiUnixStrdupText(pango_font_description_get_family(pdesc));
 pitalic = pango_font_description_get_style(pdesc);

 uidesc->Weight = pango_font_description_get_weight(pdesc);
 pstretch = pango_font_description_get_stretch(pdesc);

 uidesc->Size = pango_units_to_double(pango_font_description_get_size(pdesc));

 for (uidesc->Italic = uiTextItalicNormal; uidesc->Italic < uiTextItalicItalic; uidesc->Italic++)
  if (pangoItalics[uidesc->Italic] == pitalic)
   break;
 for (uidesc->Stretch = uiTextStretchUltraCondensed; uidesc->Stretch < uiTextStretchUltraExpanded; uidesc->Stretch++)
  if (pangoStretches[uidesc->Stretch] == pstretch)
   break;
}
