
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending_exceptions; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int MIPS_EXC_INT_TIMER ;
 int test_bit (int ,int *) ;

int kvm_mips_pending_timer(struct kvm_vcpu *vcpu)
{
 return test_bit(MIPS_EXC_INT_TIMER, &vcpu->arch.pending_exceptions);
}
