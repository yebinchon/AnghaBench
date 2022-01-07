
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_frac_pll {int base; } ;


 int PLL_BYPASS_MASK ;
 int PLL_FRAC_ACK_TIMEOUT ;
 int PLL_NEWDIV_ACK ;
 int PLL_PD_MASK ;
 int readl_poll_timeout (int ,int,int,int ,int ) ;
 int readl_relaxed (int ) ;

__attribute__((used)) static int clk_wait_ack(struct clk_frac_pll *pll)
{
 u32 val;


 if (readl_relaxed(pll->base) & (PLL_PD_MASK | PLL_BYPASS_MASK))
  return 0;


 return readl_poll_timeout(pll->base, val, val & PLL_NEWDIV_ACK, 0,
     PLL_FRAC_ACK_TIMEOUT);
}
