
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dra7_atl_desc {unsigned long divider; } ;
struct clk_hw {int dummy; } ;


 struct dra7_atl_desc* to_atl_desc (struct clk_hw*) ;

__attribute__((used)) static unsigned long atl_clk_recalc_rate(struct clk_hw *hw,
      unsigned long parent_rate)
{
 struct dra7_atl_desc *cdesc = to_atl_desc(hw);

 return parent_rate / cdesc->divider;
}
