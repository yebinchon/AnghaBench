
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 unsigned long __pa_symbol (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int cpu_strt_ptr ;
 int secondary_startup ;
 int smp_wmb () ;
 int sync_cache_w (int ) ;

__attribute__((used)) static int sti_boot_secondary(unsigned int cpu, struct task_struct *idle)
{
 unsigned long entry_pa = __pa_symbol(secondary_startup);







 __raw_writel(entry_pa, cpu_strt_ptr);


 smp_wmb();
 sync_cache_w(cpu_strt_ptr);

 return 0;
}
