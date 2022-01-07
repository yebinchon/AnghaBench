
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wired_tlb_used; scalar_t__ wired_tlb; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int kvm_vz_load_guesttlb (scalar_t__,int ,int ) ;

__attribute__((used)) static void kvm_vz_vcpu_load_wired(struct kvm_vcpu *vcpu)
{

 if (vcpu->arch.wired_tlb)
  kvm_vz_load_guesttlb(vcpu->arch.wired_tlb, 0,
         vcpu->arch.wired_tlb_used);
}
