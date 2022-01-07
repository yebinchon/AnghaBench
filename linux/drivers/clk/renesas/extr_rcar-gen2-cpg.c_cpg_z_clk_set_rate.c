
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct cpg_z_clk {int kick_reg; int reg; } ;
struct clk_hw {int dummy; } ;


 int CPG_FRQCRB_KICK ;
 int CPG_FRQCRC_ZFC_MASK ;
 int CPG_FRQCRC_ZFC_SHIFT ;
 int EBUSY ;
 int ETIMEDOUT ;
 unsigned int clamp (unsigned int,unsigned int,unsigned int) ;
 int cpu_relax () ;
 unsigned int div_u64 (int,unsigned long) ;
 int readl (int ) ;
 struct cpg_z_clk* to_z_clk (struct clk_hw*) ;
 int writel (int,int ) ;

__attribute__((used)) static int cpg_z_clk_set_rate(struct clk_hw *hw, unsigned long rate,
         unsigned long parent_rate)
{
 struct cpg_z_clk *zclk = to_z_clk(hw);
 unsigned int mult;
 u32 val, kick;
 unsigned int i;

 mult = div_u64((u64)rate * 32, parent_rate);
 mult = clamp(mult, 1U, 32U);

 if (readl(zclk->kick_reg) & CPG_FRQCRB_KICK)
  return -EBUSY;

 val = readl(zclk->reg);
 val &= ~CPG_FRQCRC_ZFC_MASK;
 val |= (32 - mult) << CPG_FRQCRC_ZFC_SHIFT;
 writel(val, zclk->reg);





 kick = readl(zclk->kick_reg);
 kick |= CPG_FRQCRB_KICK;
 writel(kick, zclk->kick_reg);
 for (i = 1000; i; i--) {
  if (!(readl(zclk->kick_reg) & CPG_FRQCRB_KICK))
   return 0;

  cpu_relax();
 }

 return -ETIMEDOUT;
}
