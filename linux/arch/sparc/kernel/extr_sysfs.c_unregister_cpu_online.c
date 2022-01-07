
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cpu {struct device dev; } ;


 int ARRAY_SIZE (int *) ;
 int * cpu_core_attrs ;
 int cpu_devices ;
 int device_remove_file (struct device*,int *) ;
 struct cpu per_cpu (int ,unsigned int) ;
 int unregister_mmu_stats (struct device*) ;

__attribute__((used)) static int unregister_cpu_online(unsigned int cpu)
{
 return 0;
}
