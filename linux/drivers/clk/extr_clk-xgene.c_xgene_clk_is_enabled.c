
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int reg_clk_mask; scalar_t__ csr_reg; scalar_t__ reg_clk_offset; } ;
struct xgene_clk {TYPE_1__ param; } ;
struct clk_hw {int dummy; } ;


 int clk_hw_get_name (struct clk_hw*) ;
 int pr_debug (char*,int ,...) ;
 struct xgene_clk* to_xgene_clk (struct clk_hw*) ;
 int xgene_clk_read (scalar_t__) ;

__attribute__((used)) static int xgene_clk_is_enabled(struct clk_hw *hw)
{
 struct xgene_clk *pclk = to_xgene_clk(hw);
 u32 data = 0;

 if (pclk->param.csr_reg) {
  pr_debug("%s clock checking\n", clk_hw_get_name(hw));
  data = xgene_clk_read(pclk->param.csr_reg +
     pclk->param.reg_clk_offset);
  pr_debug("%s clock is %s\n", clk_hw_get_name(hw),
   data & pclk->param.reg_clk_mask ? "enabled" :
       "disabled");
 }

 if (!pclk->param.csr_reg)
  return 1;
 return data & pclk->param.reg_clk_mask ? 1 : 0;
}
