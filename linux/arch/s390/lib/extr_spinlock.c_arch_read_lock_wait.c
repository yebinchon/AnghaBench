
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wait; int cnts; } ;
typedef TYPE_1__ arch_rwlock_t ;


 int READ_ONCE (int ) ;
 int __atomic_add_const (int,int *) ;
 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 int barrier () ;
 int in_interrupt () ;
 scalar_t__ unlikely (int ) ;

void arch_read_lock_wait(arch_rwlock_t *rw)
{
 if (unlikely(in_interrupt())) {
  while (READ_ONCE(rw->cnts) & 0x10000)
   barrier();
  return;
 }


 __atomic_add_const(-1, &rw->cnts);

 arch_spin_lock(&rw->wait);

 __atomic_add_const(1, &rw->cnts);

 while (READ_ONCE(rw->cnts) & 0x10000)
  barrier();
 arch_spin_unlock(&rw->wait);
}
