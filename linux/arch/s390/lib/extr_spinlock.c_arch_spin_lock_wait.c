
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arch_spinlock_t ;


 int CIF_DEDICATED_CPU ;
 int arch_spin_lock_classic (int *) ;
 int arch_spin_lock_queued (int *) ;
 scalar_t__ test_cpu_flag (int ) ;

void arch_spin_lock_wait(arch_spinlock_t *lp)
{

 if (test_cpu_flag(CIF_DEDICATED_CPU))
  arch_spin_lock_queued(lp);
 else
  arch_spin_lock_classic(lp);
}
