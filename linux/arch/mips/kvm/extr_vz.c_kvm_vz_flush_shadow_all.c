
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int asid_flush_mask; } ;
struct kvm {TYPE_1__ arch; } ;


 scalar_t__ cpu_has_guestid ;
 int cpumask_setall (int *) ;
 int kvm_flush_remote_tlbs (struct kvm*) ;

__attribute__((used)) static void kvm_vz_flush_shadow_all(struct kvm *kvm)
{
 if (cpu_has_guestid) {

  kvm_flush_remote_tlbs(kvm);
 } else {
  cpumask_setall(&kvm->arch.asid_flush_mask);
  kvm_flush_remote_tlbs(kvm);
 }
}
