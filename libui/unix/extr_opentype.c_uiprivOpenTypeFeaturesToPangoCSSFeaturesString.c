
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uiOpenTypeFeatures ;
struct TYPE_6__ {scalar_t__ len; } ;
typedef TYPE_1__ GString ;


 TYPE_1__* g_string_new (char*) ;
 int g_string_truncate (TYPE_1__*,scalar_t__) ;
 int toCSS ;
 int uiOpenTypeFeaturesForEach (int const*,int ,TYPE_1__*) ;

GString *uiprivOpenTypeFeaturesToPangoCSSFeaturesString(const uiOpenTypeFeatures *otf)
{
 GString *s;

 s = g_string_new("");
 uiOpenTypeFeaturesForEach(otf, toCSS, s);
 if (s->len != 0)

  g_string_truncate(s, s->len - 2);
 return s;
}
