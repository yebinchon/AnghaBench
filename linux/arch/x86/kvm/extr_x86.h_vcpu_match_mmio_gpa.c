
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mmio_gfn; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef scalar_t__ gpa_t ;


 int PAGE_SHIFT ;
 scalar_t__ vcpu_match_mmio_gen (struct kvm_vcpu*) ;

__attribute__((used)) static inline bool vcpu_match_mmio_gpa(struct kvm_vcpu *vcpu, gpa_t gpa)
{
 if (vcpu_match_mmio_gen(vcpu) && vcpu->arch.mmio_gfn &&
       vcpu->arch.mmio_gfn == gpa >> PAGE_SHIFT)
  return 1;

 return 0;
}
