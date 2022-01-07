
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int sve_max_vl; int flags; void* sve_state; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KVM_ARM64_VCPU_SVE_FINALIZED ;
 int SVE_SIG_REGS_SIZE (int ) ;
 unsigned int SVE_VL_ARCH_MAX ;
 scalar_t__ WARN_ON (int) ;
 void* kzalloc (int ,int ) ;
 unsigned int sve_max_virtualisable_vl ;
 int sve_vl_valid (unsigned int) ;
 int sve_vq_from_vl (unsigned int) ;

__attribute__((used)) static int kvm_vcpu_finalize_sve(struct kvm_vcpu *vcpu)
{
 void *buf;
 unsigned int vl;

 vl = vcpu->arch.sve_max_vl;






 if (WARN_ON(!sve_vl_valid(vl) || vl > sve_max_virtualisable_vl ||
      vl > SVE_VL_ARCH_MAX))
  return -EIO;

 buf = kzalloc(SVE_SIG_REGS_SIZE(sve_vq_from_vl(vl)), GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 vcpu->arch.sve_state = buf;
 vcpu->arch.flags |= KVM_ARM64_VCPU_SVE_FINALIZED;
 return 0;
}
