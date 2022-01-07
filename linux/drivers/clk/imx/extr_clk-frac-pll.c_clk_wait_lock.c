
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_frac_pll {int base; } ;


 int PLL_FRAC_LOCK_TIMEOUT ;
 int PLL_LOCK_STATUS ;
 int readl_poll_timeout (int ,int,int,int ,int ) ;

__attribute__((used)) static int clk_wait_lock(struct clk_frac_pll *pll)
{
 u32 val;

 return readl_poll_timeout(pll->base, val, val & PLL_LOCK_STATUS, 0,
     PLL_FRAC_LOCK_TIMEOUT);
}
