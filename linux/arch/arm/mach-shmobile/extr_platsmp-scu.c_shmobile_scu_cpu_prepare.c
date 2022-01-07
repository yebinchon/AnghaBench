
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __pa_symbol (int ) ;
 int shmobile_boot_scu ;
 int shmobile_scu_base_phys ;
 int shmobile_smp_hook (unsigned int,int ,int ) ;

__attribute__((used)) static int shmobile_scu_cpu_prepare(unsigned int cpu)
{

 shmobile_smp_hook(cpu, __pa_symbol(shmobile_boot_scu),
     shmobile_scu_base_phys);
 return 0;
}
