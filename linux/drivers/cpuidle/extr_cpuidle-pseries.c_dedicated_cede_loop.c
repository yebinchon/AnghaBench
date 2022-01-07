
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;
struct TYPE_2__ {int donate_dedicated_cpu; } ;


 int HMT_medium () ;
 int check_and_cede_processor () ;
 TYPE_1__* get_lppaca () ;
 int idle_loop_epilog (unsigned long) ;
 int idle_loop_prolog (unsigned long*) ;
 int local_irq_disable () ;

__attribute__((used)) static int dedicated_cede_loop(struct cpuidle_device *dev,
    struct cpuidle_driver *drv,
    int index)
{
 unsigned long in_purr;

 idle_loop_prolog(&in_purr);
 get_lppaca()->donate_dedicated_cpu = 1;

 HMT_medium();
 check_and_cede_processor();

 local_irq_disable();
 get_lppaca()->donate_dedicated_cpu = 0;

 idle_loop_epilog(in_purr);

 return index;
}
