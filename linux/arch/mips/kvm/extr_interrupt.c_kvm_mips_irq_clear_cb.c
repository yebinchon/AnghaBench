
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;



int kvm_mips_irq_clear_cb(struct kvm_vcpu *vcpu, unsigned int priority,
     u32 cause)
{
 return 1;
}
