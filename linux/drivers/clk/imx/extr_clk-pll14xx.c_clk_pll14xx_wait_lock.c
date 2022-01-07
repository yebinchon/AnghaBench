
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_pll14xx {int base; } ;


 int LOCK_TIMEOUT_US ;
 int readl_poll_timeout (int ,int,int,int ,int) ;

__attribute__((used)) static int clk_pll14xx_wait_lock(struct clk_pll14xx *pll)
{
 u32 val;

 return readl_poll_timeout(pll->base, val, val & LOCK_TIMEOUT_US, 0,
   LOCK_TIMEOUT_US);
}
