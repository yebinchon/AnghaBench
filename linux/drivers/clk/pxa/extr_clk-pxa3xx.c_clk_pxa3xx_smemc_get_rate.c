
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 unsigned long ACSR ;
 int MEMCLKCFG ;
 unsigned long __raw_readl (int ) ;
 unsigned long* df_clkdiv ;
 unsigned long* smcfs_mult ;

__attribute__((used)) static unsigned long clk_pxa3xx_smemc_get_rate(struct clk_hw *hw,
           unsigned long parent_rate)
{
 unsigned long acsr = ACSR;
 unsigned long memclkcfg = __raw_readl(MEMCLKCFG);

 return (parent_rate / 48) * smcfs_mult[(acsr >> 23) & 0x7] /
  df_clkdiv[(memclkcfg >> 16) & 0x3];
}
