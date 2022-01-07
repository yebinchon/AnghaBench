
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_device {scalar_t__ registered; } ;


 int arch_haltpoll_disable (unsigned int) ;
 int cpuidle_unregister_device (struct cpuidle_device*) ;
 int haltpoll_cpuidle_devices ;
 struct cpuidle_device* per_cpu_ptr (int ,unsigned int) ;

__attribute__((used)) static int haltpoll_cpu_offline(unsigned int cpu)
{
 struct cpuidle_device *dev;

 dev = per_cpu_ptr(haltpoll_cpuidle_devices, cpu);
 if (dev->registered) {
  arch_haltpoll_disable(cpu);
  cpuidle_unregister_device(dev);
 }

 return 0;
}
