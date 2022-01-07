
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int msr_ia32_feature_control_valid_bits; } ;


 TYPE_1__* to_vmx (struct kvm_vcpu*) ;

__attribute__((used)) static inline bool vmx_feature_control_msr_valid(struct kvm_vcpu *vcpu,
       uint64_t val)
{
 uint64_t valid_bits = to_vmx(vcpu)->msr_ia32_feature_control_valid_bits;

 return !(val & ~valid_bits);
}
