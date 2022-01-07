
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __this_cpu_write (int ,unsigned long) ;
 int local_irq_save (unsigned long) ;
 int paravirt_get_lazy_mode () ;
 int trace_xen_mc_batch (int ) ;
 int xen_mc_irq_flags ;

__attribute__((used)) static inline void xen_mc_batch(void)
{
 unsigned long flags;


 local_irq_save(flags);
 trace_xen_mc_batch(paravirt_get_lazy_mode());
 __this_cpu_write(xen_mc_irq_flags, flags);
}
