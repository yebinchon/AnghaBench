
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int kvm_age_rmapp ;
 int kvm_handle_hva_range (struct kvm*,unsigned long,unsigned long,int ,int ) ;

int kvm_age_hva(struct kvm *kvm, unsigned long start, unsigned long end)
{
 return kvm_handle_hva_range(kvm, start, end, 0, kvm_age_rmapp);
}
