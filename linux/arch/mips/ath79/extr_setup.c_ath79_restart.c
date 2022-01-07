
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AR71XX_RESET_FULL_CHIP ;
 int ath79_device_reset_set (int ) ;
 int cpu_wait () ;
 int local_irq_disable () ;

__attribute__((used)) static void ath79_restart(char *command)
{
 local_irq_disable();
 ath79_device_reset_set(AR71XX_RESET_FULL_CHIP);
 for (;;)
  if (cpu_wait)
   cpu_wait();
}
