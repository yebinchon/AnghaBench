
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;


 int check_and_cede_processor () ;
 int idle_loop_epilog (unsigned long) ;
 int idle_loop_prolog (unsigned long*) ;
 int local_irq_disable () ;

__attribute__((used)) static int shared_cede_loop(struct cpuidle_device *dev,
   struct cpuidle_driver *drv,
   int index)
{
 unsigned long in_purr;

 idle_loop_prolog(&in_purr);
 check_and_cede_processor();

 local_irq_disable();
 idle_loop_epilog(in_purr);

 return index;
}
