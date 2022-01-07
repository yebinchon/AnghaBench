
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int shx3_update_boot_vector (unsigned int) ;

__attribute__((used)) static int shx3_cpu_prepare(unsigned int cpu)
{
 shx3_update_boot_vector(cpu);
 return 0;
}
