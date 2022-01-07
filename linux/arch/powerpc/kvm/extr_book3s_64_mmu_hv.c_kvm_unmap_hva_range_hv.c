
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int hva_handler_fn ;


 int kvm_handle_hva_range (struct kvm*,unsigned long,unsigned long,int ) ;
 scalar_t__ kvm_is_radix (struct kvm*) ;
 int kvm_unmap_radix ;
 int kvm_unmap_rmapp ;

int kvm_unmap_hva_range_hv(struct kvm *kvm, unsigned long start, unsigned long end)
{
 hva_handler_fn handler;

 handler = kvm_is_radix(kvm) ? kvm_unmap_radix : kvm_unmap_rmapp;
 kvm_handle_hva_range(kvm, start, end, handler);
 return 0;
}
