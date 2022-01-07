
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int C_IRQ5 ;
 int C_TI ;
 int MIPS_EXC_INT_TIMER ;
 int kvm_clear_c0_guest_cause (int ,int) ;
 int kvm_mips_dequeue_irq (struct kvm_vcpu*,int ) ;

void kvm_mips_dequeue_timer_int_cb(struct kvm_vcpu *vcpu)
{
 kvm_clear_c0_guest_cause(vcpu->arch.cop0, (C_IRQ5 | C_TI));
 kvm_mips_dequeue_irq(vcpu, MIPS_EXC_INT_TIMER);
}
