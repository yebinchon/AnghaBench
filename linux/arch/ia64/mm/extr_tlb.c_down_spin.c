
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spinaphore {unsigned long serve; int ticket; } ;


 int acq ;
 int cpu_relax () ;
 unsigned long ia64_fetchadd (int,int *,int ) ;
 int ia64_invala () ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static inline void down_spin(struct spinaphore *ss)
{
 unsigned long t = ia64_fetchadd(1, &ss->ticket, acq), serve;

 if (time_before(t, ss->serve))
  return;

 ia64_invala();

 for (;;) {
  asm volatile ("ld8.c.nc %0=[%1]" : "=r"(serve) : "r"(&ss->serve) : "memory");
  if (time_before(t, serve))
   return;
  cpu_relax();
 }
}
