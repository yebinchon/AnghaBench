
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int VCPU_REGS_RIP ;
 int kvm_register_write (struct kvm_vcpu*,int ,unsigned long) ;

__attribute__((used)) static inline void kvm_rip_write(struct kvm_vcpu *vcpu, unsigned long val)
{
 kvm_register_write(vcpu, VCPU_REGS_RIP, val);
}
