
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int opal_trace_depth ;
 int preempt_disable () ;
 unsigned int* this_cpu_ptr (int *) ;
 int trace_opal_entry (unsigned long,unsigned long*) ;

void __trace_opal_entry(unsigned long opcode, unsigned long *args)
{
 unsigned long flags;
 unsigned int *depth;

 local_irq_save(flags);

 depth = this_cpu_ptr(&opal_trace_depth);

 if (*depth)
  goto out;

 (*depth)++;
 preempt_disable();
 trace_opal_entry(opcode, args);
 (*depth)--;

out:
 local_irq_restore(flags);
}
