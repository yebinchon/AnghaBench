
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int hva_handler_fn ;


 int kvm_handle_hva (struct kvm*,unsigned long,int ) ;
 scalar_t__ kvm_is_radix (struct kvm*) ;
 int kvm_test_age_radix ;
 int kvm_test_age_rmapp ;

int kvm_test_age_hva_hv(struct kvm *kvm, unsigned long hva)
{
 hva_handler_fn handler;

 handler = kvm_is_radix(kvm) ? kvm_test_age_radix : kvm_test_age_rmapp;
 return kvm_handle_hva(kvm, hva, handler);
}
