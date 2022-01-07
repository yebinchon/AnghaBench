
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ arch_spinlock_t ;


 scalar_t__ MACHINE_IS_LPAR ;
 int READ_ONCE (int ) ;
 int _Q_LOCK_CPU_MASK ;
 int arch_vcpu_is_preempted (int) ;
 int smp_yield_cpu (int) ;

void arch_spin_relax(arch_spinlock_t *lp)
{
 int cpu;

 cpu = READ_ONCE(lp->lock) & _Q_LOCK_CPU_MASK;
 if (!cpu)
  return;
 if (MACHINE_IS_LPAR && !arch_vcpu_is_preempted(cpu - 1))
  return;
 smp_yield_cpu(cpu - 1);
}
