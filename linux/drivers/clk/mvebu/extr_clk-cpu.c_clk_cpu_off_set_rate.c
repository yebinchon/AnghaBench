
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpu_clk {int cpu; scalar_t__ reg_base; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ SYS_CTRL_CLK_DIVIDER_CTRL_OFFSET ;
 int SYS_CTRL_CLK_DIVIDER_MASK ;
 scalar_t__ SYS_CTRL_CLK_DIVIDER_VALUE_OFFSET ;
 int readl (scalar_t__) ;
 struct cpu_clk* to_cpu_clk (struct clk_hw*) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int clk_cpu_off_set_rate(struct clk_hw *hwclk, unsigned long rate,
    unsigned long parent_rate)

{
 struct cpu_clk *cpuclk = to_cpu_clk(hwclk);
 u32 reg, div;
 u32 reload_mask;

 div = parent_rate / rate;
 reg = (readl(cpuclk->reg_base + SYS_CTRL_CLK_DIVIDER_VALUE_OFFSET)
  & (~(SYS_CTRL_CLK_DIVIDER_MASK << (cpuclk->cpu * 8))))
  | (div << (cpuclk->cpu * 8));
 writel(reg, cpuclk->reg_base + SYS_CTRL_CLK_DIVIDER_VALUE_OFFSET);

 reload_mask = 1 << (20 + cpuclk->cpu);

 reg = readl(cpuclk->reg_base + SYS_CTRL_CLK_DIVIDER_CTRL_OFFSET)
     | reload_mask;
 writel(reg, cpuclk->reg_base + SYS_CTRL_CLK_DIVIDER_CTRL_OFFSET);


 reg = readl(cpuclk->reg_base + SYS_CTRL_CLK_DIVIDER_CTRL_OFFSET)
     | 1 << 24;
 writel(reg, cpuclk->reg_base + SYS_CTRL_CLK_DIVIDER_CTRL_OFFSET);


 udelay(1000);
 reg &= ~(reload_mask | 1 << 24);
 writel(reg, cpuclk->reg_base + SYS_CTRL_CLK_DIVIDER_CTRL_OFFSET);
 udelay(1000);

 return 0;
}
