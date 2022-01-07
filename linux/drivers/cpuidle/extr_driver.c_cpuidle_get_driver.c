
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;


 struct cpuidle_driver* __cpuidle_get_cpu_driver (int) ;
 int get_cpu () ;
 int put_cpu () ;

struct cpuidle_driver *cpuidle_get_driver(void)
{
 struct cpuidle_driver *drv;
 int cpu;

 cpu = get_cpu();
 drv = __cpuidle_get_cpu_driver(cpu);
 put_cpu();

 return drv;
}
