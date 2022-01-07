
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_device {int dummy; } ;


 int cpuidle_devices ;
 int cpuidle_enable_device (struct cpuidle_device*) ;
 scalar_t__ cpuidle_get_driver () ;
 int cpuidle_pause_and_lock () ;
 int cpuidle_resume_and_unlock () ;
 struct cpuidle_device* per_cpu (int ,unsigned int) ;

__attribute__((used)) static int powernv_cpuidle_cpu_online(unsigned int cpu)
{
 struct cpuidle_device *dev = per_cpu(cpuidle_devices, cpu);

 if (dev && cpuidle_get_driver()) {
  cpuidle_pause_and_lock();
  cpuidle_enable_device(dev);
  cpuidle_resume_and_unlock();
 }
 return 0;
}
