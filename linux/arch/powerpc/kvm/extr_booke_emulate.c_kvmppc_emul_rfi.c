
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nip; } ;
struct TYPE_6__ {TYPE_2__* shared; TYPE_1__ regs; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_5__ {int srr1; int srr0; } ;


 int kvmppc_set_msr (struct kvm_vcpu*,int ) ;

__attribute__((used)) static void kvmppc_emul_rfi(struct kvm_vcpu *vcpu)
{
 vcpu->arch.regs.nip = vcpu->arch.shared->srr0;
 kvmppc_set_msr(vcpu, vcpu->arch.shared->srr1);
}
