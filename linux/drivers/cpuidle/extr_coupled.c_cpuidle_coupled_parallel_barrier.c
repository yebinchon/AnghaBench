
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuidle_device {TYPE_1__* coupled; } ;
typedef int atomic_t ;
struct TYPE_2__ {int online_count; } ;


 int atomic_inc (int *) ;
 int atomic_inc_return (int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int cpu_relax () ;
 int smp_mb__before_atomic () ;

void cpuidle_coupled_parallel_barrier(struct cpuidle_device *dev, atomic_t *a)
{
 int n = dev->coupled->online_count;

 smp_mb__before_atomic();
 atomic_inc(a);

 while (atomic_read(a) < n)
  cpu_relax();

 if (atomic_inc_return(a) == n * 2) {
  atomic_set(a, 0);
  return;
 }

 while (atomic_read(a) > n)
  cpu_relax();
}
