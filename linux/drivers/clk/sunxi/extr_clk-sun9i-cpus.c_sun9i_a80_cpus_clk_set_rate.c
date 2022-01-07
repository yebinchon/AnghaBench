
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sun9i_a80_cpus_clk {int reg; } ;
struct clk_hw {int dummy; } ;


 int SUN9I_CPUS_DIV_SET (int ,int ) ;
 int SUN9I_CPUS_MUX_GET_PARENT (int ) ;
 int SUN9I_CPUS_PLL4_DIV_SET (int ,int ) ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sun9i_a80_cpus_clk_round (unsigned long,int *,int *,int ,unsigned long) ;
 int sun9i_a80_cpus_lock ;
 struct sun9i_a80_cpus_clk* to_sun9i_a80_cpus_clk (struct clk_hw*) ;
 int writel (int ,int ) ;

__attribute__((used)) static int sun9i_a80_cpus_clk_set_rate(struct clk_hw *hw, unsigned long rate,
           unsigned long parent_rate)
{
 struct sun9i_a80_cpus_clk *cpus = to_sun9i_a80_cpus_clk(hw);
 unsigned long flags;
 u8 div, pre_div, parent;
 u32 reg;

 spin_lock_irqsave(&sun9i_a80_cpus_lock, flags);

 reg = readl(cpus->reg);


 parent = SUN9I_CPUS_MUX_GET_PARENT(reg);
 sun9i_a80_cpus_clk_round(rate, &div, &pre_div, parent, parent_rate);

 reg = SUN9I_CPUS_DIV_SET(reg, div);
 reg = SUN9I_CPUS_PLL4_DIV_SET(reg, pre_div);
 writel(reg, cpus->reg);

 spin_unlock_irqrestore(&sun9i_a80_cpus_lock, flags);

 return 0;
}
