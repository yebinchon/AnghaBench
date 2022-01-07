
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hwmod {int name; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int of_property_count_strings (struct device_node*,char*) ;
 int of_property_read_string_index (struct device_node*,char*,int,char const**) ;
 int pr_debug (char*,struct device_node*,int,int ) ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int of_dev_find_hwmod(struct device_node *np,
        struct omap_hwmod *oh)
{
 int count, i, res;
 const char *p;

 count = of_property_count_strings(np, "ti,hwmods");
 if (count < 1)
  return -ENODEV;

 for (i = 0; i < count; i++) {
  res = of_property_read_string_index(np, "ti,hwmods",
          i, &p);
  if (res)
   continue;
  if (!strcmp(p, oh->name)) {
   pr_debug("omap_hwmod: dt %pOFn[%i] uses hwmod %s\n",
     np, i, oh->name);
   return i;
  }
 }

 return -ENODEV;
}
