
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long mmio_gva; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 unsigned long PAGE_MASK ;
 scalar_t__ vcpu_match_mmio_gen (struct kvm_vcpu*) ;

__attribute__((used)) static inline bool vcpu_match_mmio_gva(struct kvm_vcpu *vcpu, unsigned long gva)
{
 if (vcpu_match_mmio_gen(vcpu) && vcpu->arch.mmio_gva &&
       vcpu->arch.mmio_gva == (gva & PAGE_MASK))
  return 1;

 return 0;
}
