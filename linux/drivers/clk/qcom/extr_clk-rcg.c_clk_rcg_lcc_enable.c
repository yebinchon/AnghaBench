
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int regmap; } ;
struct clk_rcg {int ns_reg; TYPE_1__ clkr; } ;
struct clk_hw {int dummy; } ;


 int BIT (int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct clk_rcg* to_clk_rcg (struct clk_hw*) ;

__attribute__((used)) static int clk_rcg_lcc_enable(struct clk_hw *hw)
{
 struct clk_rcg *rcg = to_clk_rcg(hw);
 u32 gfm = BIT(10);


 return regmap_update_bits(rcg->clkr.regmap, rcg->ns_reg, gfm, gfm);
}
