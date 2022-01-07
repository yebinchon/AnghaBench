
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfit_spa {TYPE_1__* spa; } ;
struct nd_region {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int range_index; } ;


 struct nfit_spa* nd_region_provider_data (struct nd_region*) ;
 int sprintf (char*,char*,int) ;
 struct nd_region* to_nd_region (struct device*) ;

__attribute__((used)) static ssize_t range_index_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nd_region *nd_region = to_nd_region(dev);
 struct nfit_spa *nfit_spa = nd_region_provider_data(nd_region);

 return sprintf(buf, "%d\n", nfit_spa->spa->range_index);
}
