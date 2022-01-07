
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ direct_mode_enabled ;
 int free_percpu (int *) ;
 int * hv_clock_event ;
 int hv_remove_stimer0_irq (scalar_t__) ;
 scalar_t__ stimer0_irq ;

void hv_stimer_free(void)
{
 if (direct_mode_enabled && (stimer0_irq != 0)) {
  hv_remove_stimer0_irq(stimer0_irq);
  stimer0_irq = 0;
 }
 free_percpu(hv_clock_event);
 hv_clock_event = ((void*)0);
}
