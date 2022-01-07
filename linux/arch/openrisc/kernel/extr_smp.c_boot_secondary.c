
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int IPI_WAKEUP ;
 int boot_lock ;
 int cpumask_of (unsigned int) ;
 unsigned int secondary_release ;
 int smp_cross_call (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void boot_secondary(unsigned int cpu, struct task_struct *idle)
{




 spin_lock(&boot_lock);

 secondary_release = cpu;
 smp_cross_call(cpumask_of(cpu), IPI_WAKEUP);





 spin_unlock(&boot_lock);
}
