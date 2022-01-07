
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct ap_cpu_clk {unsigned int cluster; TYPE_1__* pll_regs; int pll_cr_base; } ;
struct TYPE_2__ {unsigned int divider_reg; unsigned int cluster_offset; int divider_mask; int divider_offset; } ;


 int regmap_read (int ,unsigned int,int*) ;
 struct ap_cpu_clk* to_ap_cpu_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long ap_cpu_clk_recalc_rate(struct clk_hw *hw,
         unsigned long parent_rate)
{
 struct ap_cpu_clk *clk = to_ap_cpu_clk(hw);
 unsigned int cpu_clkdiv_reg;
 int cpu_clkdiv_ratio;

 cpu_clkdiv_reg = clk->pll_regs->divider_reg +
  (clk->cluster * clk->pll_regs->cluster_offset);
 regmap_read(clk->pll_cr_base, cpu_clkdiv_reg, &cpu_clkdiv_ratio);
 cpu_clkdiv_ratio &= clk->pll_regs->divider_mask;
 cpu_clkdiv_ratio >>= clk->pll_regs->divider_offset;

 return parent_rate / cpu_clkdiv_ratio;
}
