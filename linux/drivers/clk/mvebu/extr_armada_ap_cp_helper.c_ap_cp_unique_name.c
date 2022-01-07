
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
typedef int __be32 ;


 int GFP_KERNEL ;
 char* devm_kasprintf (struct device*,int ,char*,unsigned long long,char const*) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 scalar_t__ of_translate_address (struct device_node*,int const*) ;

char *ap_cp_unique_name(struct device *dev, struct device_node *np,
   const char *name)
{
 const __be32 *reg;
 u64 addr;


 if (!name)
  return ((void*)0);

 reg = of_get_property(np, "reg", ((void*)0));
 addr = of_translate_address(np, reg);
 return devm_kasprintf(dev, GFP_KERNEL, "%llx-%s",
         (unsigned long long)addr, name);
}
