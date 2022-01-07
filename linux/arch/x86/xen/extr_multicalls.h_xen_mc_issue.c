
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_restore (int ) ;
 unsigned int paravirt_get_lazy_mode () ;
 int this_cpu_read (int ) ;
 int trace_xen_mc_issue (unsigned int) ;
 int xen_mc_flush () ;
 int xen_mc_irq_flags ;

__attribute__((used)) static inline void xen_mc_issue(unsigned mode)
{
 trace_xen_mc_issue(mode);

 if ((paravirt_get_lazy_mode() & mode) == 0)
  xen_mc_flush();


 local_irq_restore(this_cpu_read(xen_mc_irq_flags));
}
