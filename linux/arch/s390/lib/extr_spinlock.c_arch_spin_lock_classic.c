
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ arch_spinlock_t ;


 int MACHINE_IS_LPAR ;
 int READ_ONCE (int ) ;
 int SPINLOCK_LOCKVAL ;
 int _Q_LOCK_CPU_MASK ;
 int _Q_TAIL_MASK ;
 scalar_t__ arch_cmpxchg_niai8 (int *,int,int) ;
 int arch_load_niai4 (int *) ;
 int arch_spin_yield_target (int ,int *) ;
 scalar_t__ arch_vcpu_is_preempted (int) ;
 int smp_yield_cpu (int) ;
 int spin_retry ;

__attribute__((used)) static inline void arch_spin_lock_classic(arch_spinlock_t *lp)
{
 int lockval, old, new, owner, count;

 lockval = SPINLOCK_LOCKVAL;


 owner = arch_spin_yield_target(READ_ONCE(lp->lock), ((void*)0));
 if (owner && arch_vcpu_is_preempted(owner - 1))
  smp_yield_cpu(owner - 1);

 count = spin_retry;
 while (1) {
  old = arch_load_niai4(&lp->lock);
  owner = old & _Q_LOCK_CPU_MASK;

  if (!owner) {
   new = (old & _Q_TAIL_MASK) | lockval;
   if (arch_cmpxchg_niai8(&lp->lock, old, new)) {

    return;
   }
   continue;
  }
  if (count-- >= 0)
   continue;
  count = spin_retry;
  if (!MACHINE_IS_LPAR || arch_vcpu_is_preempted(owner - 1))
   smp_yield_cpu(owner - 1);
 }
}
