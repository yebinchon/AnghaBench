
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int HZ ;
 scalar_t__ TWD_TIMER_CONTROL ;
 scalar_t__ TWD_TIMER_COUNTER ;
 scalar_t__ get_jiffies_64 () ;
 int pr_cont (char*,int,int) ;
 int pr_info (char*) ;
 unsigned long readl_relaxed (scalar_t__) ;
 scalar_t__ twd_base ;
 int twd_timer_rate ;
 int udelay (int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void twd_calibrate_rate(void)
{
 unsigned long count;
 u64 waitjiffies;





 if (twd_timer_rate == 0) {
  pr_info("Calibrating local timer... ");


  waitjiffies = get_jiffies_64() + 1;

  while (get_jiffies_64() < waitjiffies)
   udelay(10);


  waitjiffies += 5;


  writel_relaxed(0x1, twd_base + TWD_TIMER_CONTROL);


  writel_relaxed(0xFFFFFFFFU, twd_base + TWD_TIMER_COUNTER);

  while (get_jiffies_64() < waitjiffies)
   udelay(10);

  count = readl_relaxed(twd_base + TWD_TIMER_COUNTER);

  twd_timer_rate = (0xFFFFFFFFU - count) * (HZ / 5);

  pr_cont("%lu.%02luMHz.\n", twd_timer_rate / 1000000,
   (twd_timer_rate / 10000) % 100);
 }
}
