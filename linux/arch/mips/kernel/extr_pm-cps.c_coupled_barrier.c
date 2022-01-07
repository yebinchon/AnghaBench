
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_t ;


 int atomic_inc (int *) ;
 unsigned int atomic_inc_return (int *) ;
 unsigned int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int coupled_coherence ;
 int cpu_relax () ;
 int smp_mb__before_atomic () ;

__attribute__((used)) static void coupled_barrier(atomic_t *a, unsigned online)
{






 if (!coupled_coherence)
  return;

 smp_mb__before_atomic();
 atomic_inc(a);

 while (atomic_read(a) < online)
  cpu_relax();

 if (atomic_inc_return(a) == online * 2) {
  atomic_set(a, 0);
  return;
 }

 while (atomic_read(a) > online)
  cpu_relax();
}
