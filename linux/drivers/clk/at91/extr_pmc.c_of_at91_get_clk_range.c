
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct device_node {int dummy; } ;
struct clk_range {void* max; void* min; } ;


 int of_property_read_u32_index (struct device_node*,char const*,int,void**) ;

int of_at91_get_clk_range(struct device_node *np, const char *propname,
     struct clk_range *range)
{
 u32 min, max;
 int ret;

 ret = of_property_read_u32_index(np, propname, 0, &min);
 if (ret)
  return ret;

 ret = of_property_read_u32_index(np, propname, 1, &max);
 if (ret)
  return ret;

 if (range) {
  range->min = min;
  range->max = max;
 }

 return 0;
}
