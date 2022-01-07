
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;


 scalar_t__ current_clr_polling_and_test () ;
 int default_idle () ;
 int local_irq_enable () ;

__attribute__((used)) static int default_enter_idle(struct cpuidle_device *dev,
         struct cpuidle_driver *drv, int index)
{
 if (current_clr_polling_and_test()) {
  local_irq_enable();
  return index;
 }
 default_idle();
 return index;
}
