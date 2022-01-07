
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpg_z_clk {unsigned long fixed_div; int mask; int kick_reg; int reg; } ;
struct clk_hw {int dummy; } ;


 int CPG_FRQCRB_KICK ;
 unsigned int DIV64_U64_ROUND_CLOSEST (unsigned long,unsigned long) ;
 int EBUSY ;
 int ETIMEDOUT ;
 int __ffs (int) ;
 unsigned int clamp (unsigned int,unsigned int,unsigned int) ;
 int cpg_reg_modify (int ,int,int) ;
 int cpu_relax () ;
 int readl (int ) ;
 struct cpg_z_clk* to_z_clk (struct clk_hw*) ;

__attribute__((used)) static int cpg_z_clk_set_rate(struct clk_hw *hw, unsigned long rate,
         unsigned long parent_rate)
{
 struct cpg_z_clk *zclk = to_z_clk(hw);
 unsigned int mult;
 unsigned int i;

 mult = DIV64_U64_ROUND_CLOSEST(rate * 32ULL * zclk->fixed_div,
           parent_rate);
 mult = clamp(mult, 1U, 32U);

 if (readl(zclk->kick_reg) & CPG_FRQCRB_KICK)
  return -EBUSY;

 cpg_reg_modify(zclk->reg, zclk->mask,
         ((32 - mult) << __ffs(zclk->mask)) & zclk->mask);





 cpg_reg_modify(zclk->kick_reg, 0, CPG_FRQCRB_KICK);
 for (i = 1000; i; i--) {
  if (!(readl(zclk->kick_reg) & CPG_FRQCRB_KICK))
   return 0;

  cpu_relax();
 }

 return -ETIMEDOUT;
}
