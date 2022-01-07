
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpum_cf_avail () ;
 scalar_t__ cpum_sf_avail () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int print_debug_cf () ;
 int print_debug_sf () ;

void perf_event_print_debug(void)
{
 unsigned long flags;

 local_irq_save(flags);
 if (cpum_cf_avail())
  print_debug_cf();
 if (cpum_sf_avail())
  print_debug_sf();
 local_irq_restore(flags);
}
