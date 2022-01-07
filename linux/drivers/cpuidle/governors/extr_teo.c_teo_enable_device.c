
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct teo_cpu {int * intervals; } ;
struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int cpu; } ;


 int INTERVALS ;
 int UINT_MAX ;
 int memset (struct teo_cpu*,int ,int) ;
 struct teo_cpu* per_cpu_ptr (int *,int ) ;
 int teo_cpus ;

__attribute__((used)) static int teo_enable_device(struct cpuidle_driver *drv,
        struct cpuidle_device *dev)
{
 struct teo_cpu *cpu_data = per_cpu_ptr(&teo_cpus, dev->cpu);
 int i;

 memset(cpu_data, 0, sizeof(*cpu_data));

 for (i = 0; i < INTERVALS; i++)
  cpu_data->intervals[i] = UINT_MAX;

 return 0;
}
