
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int C_TI ;
 scalar_t__ kvm_mips_pending_timer (struct kvm_vcpu*) ;
 int kvm_read_c0_guest_cause (int ) ;

int kvm_cpu_has_pending_timer(struct kvm_vcpu *vcpu)
{
 return kvm_mips_pending_timer(vcpu) ||
  kvm_read_c0_guest_cause(vcpu->arch.cop0) & C_TI;
}
