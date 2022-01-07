
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int omap2_can_sleep () ;
 int omap2_enter_full_retention () ;
 int omap2_enter_mpu_retention () ;
 scalar_t__ omap_irq_pending () ;

__attribute__((used)) static void omap2_pm_idle(void)
{
 if (!omap2_can_sleep()) {
  if (omap_irq_pending())
   return;
  omap2_enter_mpu_retention();
  return;
 }

 if (omap_irq_pending())
  return;

 omap2_enter_full_retention();
}
