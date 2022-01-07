
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_range_node {unsigned int range_min; unsigned int window_len; } ;
struct regmap {int dummy; } ;



__attribute__((used)) static unsigned int _regmap_register_page(struct regmap *map,
       unsigned int reg,
       struct regmap_range_node *range)
{
 unsigned int win_page = (reg - range->range_min) / range->window_len;

 return win_page;
}
