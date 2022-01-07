
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_notifier_chain_unregister (int *,int *) ;
 int gmap_notifier ;
 int gmap_unregister_pte_notifier (int *) ;
 int kvm_clock_notifier ;
 int s390_epoch_delta_notifier ;
 int vsie_gmap_notifier ;

void kvm_arch_hardware_unsetup(void)
{
 gmap_unregister_pte_notifier(&gmap_notifier);
 gmap_unregister_pte_notifier(&vsie_gmap_notifier);
 atomic_notifier_chain_unregister(&s390_epoch_delta_notifier,
      &kvm_clock_notifier);
}
