
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * gpr; } ;
struct TYPE_4__ {TYPE_1__ regs; } ;
struct kvm_vcpu {TYPE_2__ arch; int kvm; } ;


 long H_HARDWARE ;
 long H_SUCCESS ;
 int MSR_IR ;
 scalar_t__ kvm_is_radix (int ) ;
 int mfmsr () ;
 int powernv_get_random_long (int *) ;
 int powernv_get_random_real_mode (int *) ;

long kvmppc_h_random(struct kvm_vcpu *vcpu)
{
 int r;


 if (kvm_is_radix(vcpu->kvm) && (mfmsr() & MSR_IR))
  r = powernv_get_random_long(&vcpu->arch.regs.gpr[4]);
 else
  r = powernv_get_random_real_mode(&vcpu->arch.regs.gpr[4]);
 if (r)
  return H_SUCCESS;

 return H_HARDWARE;
}
