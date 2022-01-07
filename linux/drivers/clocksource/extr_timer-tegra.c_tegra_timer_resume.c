
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 scalar_t__ TIMERUS_USEC_CFG ;
 scalar_t__ timer_reg_base ;
 int usec_config ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void tegra_timer_resume(struct clock_event_device *evt)
{
 writel_relaxed(usec_config, timer_reg_base + TIMERUS_USEC_CFG);
}
