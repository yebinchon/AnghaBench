
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chsc_sgib (int ) ;
 int free_page (unsigned long) ;
 int * gib ;
 int gib_alert_irq ;
 int unregister_adapter_interrupt (int *) ;

void kvm_s390_gib_destroy(void)
{
 if (!gib)
  return;
 chsc_sgib(0);
 unregister_adapter_interrupt(&gib_alert_irq);
 free_page((unsigned long)gib);
 gib = ((void*)0);
}
