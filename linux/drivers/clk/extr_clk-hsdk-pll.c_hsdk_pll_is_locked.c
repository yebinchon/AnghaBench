
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsdk_pll_clk {int dummy; } ;


 int CGU_PLL_STATUS ;
 int CGU_PLL_STATUS_LOCK ;
 int hsdk_pll_read (struct hsdk_pll_clk*,int ) ;

__attribute__((used)) static inline bool hsdk_pll_is_locked(struct hsdk_pll_clk *clk)
{
 return !!(hsdk_pll_read(clk, CGU_PLL_STATUS) & CGU_PLL_STATUS_LOCK);
}
