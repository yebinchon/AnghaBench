
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;

__attribute__((used)) static int xgene_pllclk_version(struct device_node *np)
{
 if (of_device_is_compatible(np, "apm,xgene-socpll-clock"))
  return 1;
 if (of_device_is_compatible(np, "apm,xgene-pcppll-clock"))
  return 1;
 return 2;
}
