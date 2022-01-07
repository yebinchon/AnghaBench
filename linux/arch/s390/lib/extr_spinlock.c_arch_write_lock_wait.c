
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wait; int cnts; } ;
typedef TYPE_1__ arch_rwlock_t ;


 int READ_ONCE (int ) ;
 int __atomic_add (int,int *) ;
 scalar_t__ __atomic_cmpxchg_bool (int *,int,int) ;
 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 int barrier () ;

void arch_write_lock_wait(arch_rwlock_t *rw)
{
 int old;


 __atomic_add(0x20000, &rw->cnts);


 arch_spin_lock(&rw->wait);

 while (1) {
  old = READ_ONCE(rw->cnts);
  if ((old & 0x1ffff) == 0 &&
      __atomic_cmpxchg_bool(&rw->cnts, old, old | 0x10000))

   break;
  barrier();
 }

 arch_spin_unlock(&rw->wait);
}
