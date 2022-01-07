
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_pllv3 {int power_bit; int base; scalar_t__ powerup_set; } ;


 int BM_PLL_LOCK ;
 int ETIMEDOUT ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int readl_relaxed (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int clk_pllv3_wait_lock(struct clk_pllv3 *pll)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(10);
 u32 val = readl_relaxed(pll->base) & pll->power_bit;


 if ((pll->powerup_set && !val) || (!pll->powerup_set && val))
  return 0;


 do {
  if (readl_relaxed(pll->base) & BM_PLL_LOCK)
   break;
  if (time_after(jiffies, timeout))
   break;
  usleep_range(50, 500);
 } while (1);

 return readl_relaxed(pll->base) & BM_PLL_LOCK ? 0 : -ETIMEDOUT;
}
