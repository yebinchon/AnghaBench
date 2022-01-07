
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct parent_map {scalar_t__ src; } ;
struct clk_hw {int dummy; } ;


 int ENOENT ;
 int clk_hw_get_num_parents (struct clk_hw*) ;

int qcom_find_src_index(struct clk_hw *hw, const struct parent_map *map, u8 src)
{
 int i, num_parents = clk_hw_get_num_parents(hw);

 for (i = 0; i < num_parents; i++)
  if (src == map[i].src)
   return i;

 return -ENOENT;
}
