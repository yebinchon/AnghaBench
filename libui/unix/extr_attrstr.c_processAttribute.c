
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uiUnderlineColor ;
typedef int uiOpenTypeFeatures ;
typedef int uiForEach ;
typedef int uiAttributedString ;
typedef int uiAttribute ;
struct foreachParams {int dummy; } ;
typedef int guint16 ;
struct TYPE_4__ {int str; } ;
typedef int PangoUnderline ;
typedef TYPE_1__ GString ;


 int PANGO_UNDERLINE_DOUBLE ;
 int PANGO_UNDERLINE_ERROR ;
 int PANGO_UNDERLINE_NONE ;
 int PANGO_UNDERLINE_SINGLE ;
 int TRUE ;
 int addattr (struct foreachParams*,size_t,size_t,int ) ;
 int cairoToPango (int ) ;
 int g_string_free (TYPE_1__*,int ) ;
 int pango_attr_background_new (int,int,int) ;
 int pango_attr_family_new (int ) ;
 int pango_attr_foreground_new (int,int,int) ;
 int pango_attr_size_new (int ) ;
 int pango_attr_stretch_new (int ) ;
 int pango_attr_style_new (int ) ;
 int pango_attr_underline_color_new (int,int,int) ;
 int pango_attr_underline_new (int ) ;
 int pango_attr_weight_new (int ) ;
 int uiAttributeColor (int const*,double*,double*,double*,double*) ;
 int uiAttributeFamily (int const*) ;
 int * uiAttributeFeatures (int const*) ;
 int uiAttributeGetType (int const*) ;
 int uiAttributeItalic (int const*) ;
 int uiAttributeSize (int const*) ;
 int uiAttributeStretch (int const*) ;
 int uiAttributeUnderline (int const*) ;
 int uiAttributeUnderlineColor (int const*,int *,double*,double*,double*,double*) ;
 int uiAttributeWeight (int const*) ;
 int uiForEachContinue ;
 int uiprivFUTURE_pango_attr_background_alpha_new (int) ;
 int uiprivFUTURE_pango_attr_font_features_new (int ) ;
 int uiprivFUTURE_pango_attr_foreground_alpha_new (int) ;
 int uiprivItalicToPangoStyle (int ) ;
 TYPE_1__* uiprivOpenTypeFeaturesToPangoCSSFeaturesString (int const*) ;
 int uiprivStretchToPangoStretch (int ) ;
 int uiprivWeightToPangoWeight (int ) ;

__attribute__((used)) static uiForEach processAttribute(const uiAttributedString *s, const uiAttribute *attr, size_t start, size_t end, void *data)
{
 struct foreachParams *p = (struct foreachParams *) data;
 double r, g, b, a;
 PangoUnderline underline;
 uiUnderlineColor colorType;
 const uiOpenTypeFeatures *features;
 GString *featurestr;

 switch (uiAttributeGetType(attr)) {
 case 143:
  addattr(p, start, end,
   pango_attr_family_new(uiAttributeFamily(attr)));
  break;
 case 140:
  addattr(p, start, end,
   pango_attr_size_new(cairoToPango(uiAttributeSize(attr))));
  break;
 case 136:

  addattr(p, start, end,
   pango_attr_weight_new(uiprivWeightToPangoWeight(uiAttributeWeight(attr))));
  break;
 case 141:
  addattr(p, start, end,
   pango_attr_style_new(uiprivItalicToPangoStyle(uiAttributeItalic(attr))));
  break;
 case 139:
  addattr(p, start, end,
   pango_attr_stretch_new(uiprivStretchToPangoStretch(uiAttributeStretch(attr))));
  break;
 case 144:
  uiAttributeColor(attr, &r, &g, &b, &a);
  addattr(p, start, end,
   pango_attr_foreground_new(
    (guint16) (r * 65535.0),
    (guint16) (g * 65535.0),
    (guint16) (b * 65535.0)));
  addattr(p, start, end,
   uiprivFUTURE_pango_attr_foreground_alpha_new(
    (guint16) (a * 65535.0)));
  break;
 case 145:

  uiAttributeColor(attr, &r, &g, &b, &a);
  addattr(p, start, end,
   pango_attr_background_new(
    (guint16) (r * 65535.0),
    (guint16) (g * 65535.0),
    (guint16) (b * 65535.0)));
  addattr(p, start, end,
   uiprivFUTURE_pango_attr_background_alpha_new(
    (guint16) (a * 65535.0)));
  break;
 case 138:
  switch (uiAttributeUnderline(attr)) {
  case 130:
   underline = PANGO_UNDERLINE_NONE;
   break;
  case 129:
   underline = PANGO_UNDERLINE_SINGLE;
   break;
  case 131:
   underline = PANGO_UNDERLINE_DOUBLE;
   break;
  case 128:
   underline = PANGO_UNDERLINE_ERROR;
   break;
  }
  addattr(p, start, end,
   pango_attr_underline_new(underline));
  break;
 case 137:
  uiAttributeUnderlineColor(attr, &colorType, &r, &g, &b, &a);
  switch (colorType) {
  case 134:
   addattr(p, start, end,
    pango_attr_underline_color_new(
     (guint16) (r * 65535.0),
     (guint16) (g * 65535.0),
     (guint16) (b * 65535.0)));
   break;
  case 132:

   addattr(p, start, end,
    pango_attr_underline_color_new(65535, 0, 0));
   break;
  case 133:

   addattr(p, start, end,
    pango_attr_underline_color_new(0, 65535, 0));
   break;
  case 135:

   addattr(p, start, end,
    pango_attr_underline_color_new(0, 0, 65535));
   break;
  }
  break;
 case 142:


  features = uiAttributeFeatures(attr);
  if (features == ((void*)0))
   break;
  featurestr = uiprivOpenTypeFeaturesToPangoCSSFeaturesString(features);
  addattr(p, start, end,
   uiprivFUTURE_pango_attr_font_features_new(featurestr->str));
  g_string_free(featurestr, TRUE);
  break;
 default:

  ;
 }
 return uiForEachContinue;
}
