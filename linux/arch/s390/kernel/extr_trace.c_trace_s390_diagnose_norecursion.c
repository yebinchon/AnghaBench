
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_LOCKDEP ;
 scalar_t__ IS_ENABLED (int ) ;
 int diagnose_trace_depth ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned int* this_cpu_ptr (int *) ;
 int trace_s390_diagnose (int) ;

void trace_s390_diagnose_norecursion(int diag_nr)
{
 unsigned long flags;
 unsigned int *depth;


 if (IS_ENABLED(CONFIG_LOCKDEP))
  return;
 local_irq_save(flags);
 depth = this_cpu_ptr(&diagnose_trace_depth);
 if (*depth == 0) {
  (*depth)++;
  trace_s390_diagnose(diag_nr);
  (*depth)--;
 }
 local_irq_restore(flags);
}
