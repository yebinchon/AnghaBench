
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uiOpenTypeFeatures ;
struct TYPE_5__ {int features; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ uiAttribute ;


 TYPE_2__* newAttribute (int ) ;
 int uiAttributeTypeFeatures ;
 int uiOpenTypeFeaturesClone (int const*) ;

uiAttribute *uiNewFeaturesAttribute(const uiOpenTypeFeatures *otf)
{
 uiAttribute *a;

 a = newAttribute(uiAttributeTypeFeatures);
 a->u.features = uiOpenTypeFeaturesClone(otf);
 return a;
}
