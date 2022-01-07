
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int KEYSTONE_MON_CPU_UP_IDX ;
 int keystone_cpu_smc (int ,unsigned int,unsigned long) ;
 int pr_debug (char*,unsigned int,unsigned long) ;
 int pr_err (char*,unsigned int,int) ;
 int secondary_startup ;
 unsigned long virt_to_idmap (int *) ;

__attribute__((used)) static int keystone_smp_boot_secondary(unsigned int cpu,
      struct task_struct *idle)
{
 unsigned long start = virt_to_idmap(&secondary_startup);
 int error;

 pr_debug("keystone-smp: booting cpu %d, vector %08lx\n",
   cpu, start);

 error = keystone_cpu_smc(KEYSTONE_MON_CPU_UP_IDX, cpu, start);
 if (error)
  pr_err("CPU %d bringup failed with %d\n", cpu, error);

 return error;
}
