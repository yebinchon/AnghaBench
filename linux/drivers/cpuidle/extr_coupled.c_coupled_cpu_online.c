
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_device {scalar_t__ coupled; } ;


 int cpuidle_coupled_allow_idle (scalar_t__) ;
 int cpuidle_coupled_update_online_cpus (scalar_t__) ;
 int cpuidle_devices ;
 int cpuidle_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cpuidle_device* per_cpu (int ,unsigned int) ;

__attribute__((used)) static int coupled_cpu_online(unsigned int cpu)
{
 struct cpuidle_device *dev;

 mutex_lock(&cpuidle_lock);

 dev = per_cpu(cpuidle_devices, cpu);
 if (dev && dev->coupled) {
  cpuidle_coupled_update_online_cpus(dev->coupled);
  cpuidle_coupled_allow_idle(dev->coupled);
 }

 mutex_unlock(&cpuidle_lock);
 return 0;
}
