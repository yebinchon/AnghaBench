
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pistachio_clk_pll {int dummy; } ;


 int PLL_STATUS ;
 int PLL_STATUS_LOCK ;
 int cpu_relax () ;
 int pll_readl (struct pistachio_clk_pll*,int ) ;

__attribute__((used)) static inline void pll_lock(struct pistachio_clk_pll *pll)
{
 while (!(pll_readl(pll, PLL_STATUS) & PLL_STATUS_LOCK))
  cpu_relax();
}
