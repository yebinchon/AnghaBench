
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int regmap; } ;
struct clk_pix_rdi {scalar_t__ s_mask; int s_reg; TYPE_1__ clkr; scalar_t__ s2_mask; int s2_reg; } ;
struct clk_hw {int clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_hw_get_num_parents (struct clk_hw*) ;
 struct clk_hw* clk_hw_get_parent_by_index (struct clk_hw*,int) ;
 int clk_prepare_enable (int ) ;
 int regmap_update_bits (int ,int ,scalar_t__,scalar_t__) ;
 struct clk_pix_rdi* to_clk_pix_rdi (struct clk_hw*) ;
 int udelay (int) ;

__attribute__((used)) static int pix_rdi_set_parent(struct clk_hw *hw, u8 index)
{
 int i;
 int ret = 0;
 u32 val;
 struct clk_pix_rdi *rdi = to_clk_pix_rdi(hw);
 int num_parents = clk_hw_get_num_parents(hw);
 for (i = 0; i < num_parents; i++) {
  struct clk_hw *p = clk_hw_get_parent_by_index(hw, i);
  ret = clk_prepare_enable(p->clk);
  if (ret)
   goto err;
 }

 if (index == 2)
  val = rdi->s2_mask;
 else
  val = 0;
 regmap_update_bits(rdi->clkr.regmap, rdi->s2_reg, rdi->s2_mask, val);




 udelay(1);

 if (index == 1)
  val = rdi->s_mask;
 else
  val = 0;
 regmap_update_bits(rdi->clkr.regmap, rdi->s_reg, rdi->s_mask, val);




 udelay(1);

err:
 for (i--; i >= 0; i--) {
  struct clk_hw *p = clk_hw_get_parent_by_index(hw, i);
  clk_disable_unprepare(p->clk);
 }

 return ret;
}
