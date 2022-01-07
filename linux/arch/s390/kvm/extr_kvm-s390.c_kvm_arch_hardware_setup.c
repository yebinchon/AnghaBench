
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int notifier_call; } ;


 int atomic_notifier_chain_register (int *,int *) ;
 TYPE_1__ gmap_notifier ;
 int gmap_register_pte_notifier (TYPE_1__*) ;
 int kvm_clock_notifier ;
 int kvm_gmap_notifier ;
 int kvm_s390_vsie_gmap_notifier ;
 int s390_epoch_delta_notifier ;
 TYPE_1__ vsie_gmap_notifier ;

int kvm_arch_hardware_setup(void)
{
 gmap_notifier.notifier_call = kvm_gmap_notifier;
 gmap_register_pte_notifier(&gmap_notifier);
 vsie_gmap_notifier.notifier_call = kvm_s390_vsie_gmap_notifier;
 gmap_register_pte_notifier(&vsie_gmap_notifier);
 atomic_notifier_chain_register(&s390_epoch_delta_notifier,
           &kvm_clock_notifier);
 return 0;
}
