
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int PangoAttribute ;


 int * newFeaturesAttr (int const*) ;
 int * stub1 (int const*) ;

PangoAttribute *uiprivFUTURE_pango_attr_font_features_new(const gchar *features)
{
 if (newFeaturesAttr == ((void*)0))
  return ((void*)0);
 return (*newFeaturesAttr)(features);
}
