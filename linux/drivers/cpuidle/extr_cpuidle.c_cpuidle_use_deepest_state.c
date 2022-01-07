
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_device {int use_deepest_state; } ;


 struct cpuidle_device* cpuidle_get_device () ;
 int preempt_disable () ;
 int preempt_enable () ;

void cpuidle_use_deepest_state(bool enable)
{
 struct cpuidle_device *dev;

 preempt_disable();
 dev = cpuidle_get_device();
 if (dev)
  dev->use_deepest_state = enable;
 preempt_enable();
}
