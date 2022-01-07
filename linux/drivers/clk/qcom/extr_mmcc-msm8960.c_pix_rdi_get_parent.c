
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int regmap; } ;
struct clk_pix_rdi {int s2_mask; int s_mask; int s_reg; TYPE_1__ clkr; int s2_reg; } ;
struct clk_hw {int dummy; } ;


 int regmap_read (int ,int ,int*) ;
 struct clk_pix_rdi* to_clk_pix_rdi (struct clk_hw*) ;

__attribute__((used)) static u8 pix_rdi_get_parent(struct clk_hw *hw)
{
 u32 val;
 struct clk_pix_rdi *rdi = to_clk_pix_rdi(hw);


 regmap_read(rdi->clkr.regmap, rdi->s2_reg, &val);
 if (val & rdi->s2_mask)
  return 2;

 regmap_read(rdi->clkr.regmap, rdi->s_reg, &val);
 if (val & rdi->s_mask)
  return 1;

 return 0;
}
