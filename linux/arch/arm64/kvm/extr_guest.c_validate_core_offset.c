
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_one_reg {int id; } ;


 int EINVAL ;
 int KVM_REG_SIZE (int ) ;
 int core_reg_offset_from_id (int ) ;
 int core_reg_size_from_offset (struct kvm_vcpu const*,int ) ;

__attribute__((used)) static int validate_core_offset(const struct kvm_vcpu *vcpu,
    const struct kvm_one_reg *reg)
{
 u64 off = core_reg_offset_from_id(reg->id);
 int size = core_reg_size_from_offset(vcpu, off);

 if (size < 0)
  return -EINVAL;

 if (KVM_REG_SIZE(reg->id) != size)
  return -EINVAL;

 return 0;
}
