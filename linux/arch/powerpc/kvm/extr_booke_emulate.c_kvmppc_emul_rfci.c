
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nip; } ;
struct TYPE_4__ {int csrr1; int csrr0; TYPE_1__ regs; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int kvmppc_set_msr (struct kvm_vcpu*,int ) ;

__attribute__((used)) static void kvmppc_emul_rfci(struct kvm_vcpu *vcpu)
{
 vcpu->arch.regs.nip = vcpu->arch.csrr0;
 kvmppc_set_msr(vcpu, vcpu->arch.csrr1);
}
