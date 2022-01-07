
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ TIMER_VAL ;
 int last_reload ;
 scalar_t__ mcs814x_timer_base ;
 int readl_relaxed (scalar_t__) ;
 int ticks2usecs (int) ;

__attribute__((used)) static u32 mcs814x_gettimeoffset(void)
{
 u32 ticks = readl_relaxed(mcs814x_timer_base + TIMER_VAL);

 if (ticks < last_reload)
  return ticks2usecs(ticks + (u32)(0xffffffff - last_reload));
 else
  return ticks2usecs(ticks - last_reload);
}
