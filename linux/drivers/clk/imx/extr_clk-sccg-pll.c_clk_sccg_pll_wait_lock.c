
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_sccg_pll {scalar_t__ base; } ;


 scalar_t__ PLL_CFG0 ;
 int PLL_LOCK_MASK ;
 int PLL_SCCG_LOCK_TIMEOUT ;
 int SSCG_PLL_BYPASS2_MASK ;
 int readl_poll_timeout (scalar_t__,int,int,int ,int ) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static int clk_sccg_pll_wait_lock(struct clk_sccg_pll *pll)
{
 u32 val;

 val = readl_relaxed(pll->base + PLL_CFG0);


 if (!(val & SSCG_PLL_BYPASS2_MASK))
  return readl_poll_timeout(pll->base, val, val & PLL_LOCK_MASK,
      0, PLL_SCCG_LOCK_TIMEOUT);

 return 0;
}
