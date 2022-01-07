
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int* gcr; } ;


 int CR0_CPU_TIMER_SUBMASK ;
 int psw_extint_disabled (struct kvm_vcpu*) ;

__attribute__((used)) static int cpu_timer_interrupts_enabled(struct kvm_vcpu *vcpu)
{
 return !psw_extint_disabled(vcpu) &&
        (vcpu->arch.sie_block->gcr[0] & CR0_CPU_TIMER_SUBMASK);
}
