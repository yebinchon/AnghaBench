
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct device_node {int phandle; } ;


 int ENODEV ;
 scalar_t__ callin_flag ;
 int * cpu_new_thread ;
 scalar_t__ hypervisor ;
 int kfree (void*) ;
 scalar_t__ ldom_domaining_enabled ;
 int ldom_startcpu_cpuid (unsigned int,unsigned long,void**) ;
 struct device_node* of_find_node_by_cpuid (unsigned int) ;
 int printk (char*,unsigned int) ;
 int prom_startcpu (int ,unsigned long,unsigned long) ;
 int prom_startcpu_cpuid (unsigned int,unsigned long,unsigned long) ;
 int sparc64_cpu_startup ;
 int * task_thread_info (struct task_struct*) ;
 scalar_t__ tlb_type ;
 int udelay (int) ;

__attribute__((used)) static int smp_boot_one_cpu(unsigned int cpu, struct task_struct *idle)
{
 unsigned long entry =
  (unsigned long)(&sparc64_cpu_startup);
 unsigned long cookie =
  (unsigned long)(&cpu_new_thread);
 void *descr = ((void*)0);
 int timeout, ret;

 callin_flag = 0;
 cpu_new_thread = task_thread_info(idle);

 if (tlb_type == hypervisor) {







   prom_startcpu_cpuid(cpu, entry, cookie);
 } else {
  struct device_node *dp = of_find_node_by_cpuid(cpu);

  prom_startcpu(dp->phandle, entry, cookie);
 }

 for (timeout = 0; timeout < 50000; timeout++) {
  if (callin_flag)
   break;
  udelay(100);
 }

 if (callin_flag) {
  ret = 0;
 } else {
  printk("Processor %d is stuck.\n", cpu);
  ret = -ENODEV;
 }
 cpu_new_thread = ((void*)0);

 kfree(descr);

 return ret;
}
