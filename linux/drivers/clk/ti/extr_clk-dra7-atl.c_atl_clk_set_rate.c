
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dra7_atl_desc {int divider; } ;
struct clk_hw {int dummy; } ;


 int DRA7_ATL_DIVIDER_MASK ;
 int EINVAL ;
 struct dra7_atl_desc* to_atl_desc (struct clk_hw*) ;

__attribute__((used)) static int atl_clk_set_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long parent_rate)
{
 struct dra7_atl_desc *cdesc;
 u32 divider;

 if (!hw || !rate)
  return -EINVAL;

 cdesc = to_atl_desc(hw);
 divider = ((parent_rate + rate / 2) / rate) - 1;
 if (divider > DRA7_ATL_DIVIDER_MASK)
  divider = DRA7_ATL_DIVIDER_MASK;

 cdesc->divider = divider + 1;

 return 0;
}
