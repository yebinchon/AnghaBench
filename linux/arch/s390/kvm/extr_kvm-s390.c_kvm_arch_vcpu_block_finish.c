
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int valid_wakeup; } ;



void kvm_arch_vcpu_block_finish(struct kvm_vcpu *vcpu)
{
 vcpu->valid_wakeup = 0;
}
