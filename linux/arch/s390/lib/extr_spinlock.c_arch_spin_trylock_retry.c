
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ arch_spinlock_t ;


 int READ_ONCE (int ) ;
 int SPINLOCK_LOCKVAL ;
 scalar_t__ __atomic_cmpxchg_bool (int *,int ,int) ;
 int spin_retry ;

int arch_spin_trylock_retry(arch_spinlock_t *lp)
{
 int cpu = SPINLOCK_LOCKVAL;
 int owner, count;

 for (count = spin_retry; count > 0; count--) {
  owner = READ_ONCE(lp->lock);

  if (!owner) {
   if (__atomic_cmpxchg_bool(&lp->lock, 0, cpu))
    return 1;
  }
 }
 return 0;
}
