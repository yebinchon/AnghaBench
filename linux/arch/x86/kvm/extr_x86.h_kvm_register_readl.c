
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct kvm_vcpu {int dummy; } ;
typedef enum kvm_reg { ____Placeholder_kvm_reg } kvm_reg ;


 scalar_t__ is_64_bit_mode (struct kvm_vcpu*) ;
 unsigned long kvm_register_read (struct kvm_vcpu*,int) ;

__attribute__((used)) static inline unsigned long kvm_register_readl(struct kvm_vcpu *vcpu,
            enum kvm_reg reg)
{
 unsigned long val = kvm_register_read(vcpu, reg);

 return is_64_bit_mode(vcpu) ? val : (u32)val;
}
