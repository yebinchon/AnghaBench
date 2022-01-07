
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dra7_atl_desc {int enabled; } ;
struct clk_hw {int dummy; } ;


 struct dra7_atl_desc* to_atl_desc (struct clk_hw*) ;

__attribute__((used)) static int atl_clk_is_enabled(struct clk_hw *hw)
{
 struct dra7_atl_desc *cdesc = to_atl_desc(hw);

 return cdesc->enabled;
}
