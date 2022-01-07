
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvmppc_book3s_shadow_vcpu {int in_use; int shadow_fscr; int pc; int lr; int ctr; int xer; int cr; int * gpr; } ;
struct TYPE_3__ {int nip; int link; int ctr; int xer; int ccr; int * gpr; } ;
struct TYPE_4__ {int entry_ic; int entry_vtb; int entry_tb; int shadow_fscr; TYPE_1__ regs; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int CPU_FTR_ARCH_207S ;
 int SPRN_IC ;
 scalar_t__ cpu_has_feature (int ) ;
 int get_tb () ;
 int get_vtb () ;
 int mfspr (int ) ;
 struct kvmppc_book3s_shadow_vcpu* svcpu_get (struct kvm_vcpu*) ;
 int svcpu_put (struct kvmppc_book3s_shadow_vcpu*) ;

void kvmppc_copy_to_svcpu(struct kvm_vcpu *vcpu)
{
 struct kvmppc_book3s_shadow_vcpu *svcpu = svcpu_get(vcpu);

 svcpu->gpr[0] = vcpu->arch.regs.gpr[0];
 svcpu->gpr[1] = vcpu->arch.regs.gpr[1];
 svcpu->gpr[2] = vcpu->arch.regs.gpr[2];
 svcpu->gpr[3] = vcpu->arch.regs.gpr[3];
 svcpu->gpr[4] = vcpu->arch.regs.gpr[4];
 svcpu->gpr[5] = vcpu->arch.regs.gpr[5];
 svcpu->gpr[6] = vcpu->arch.regs.gpr[6];
 svcpu->gpr[7] = vcpu->arch.regs.gpr[7];
 svcpu->gpr[8] = vcpu->arch.regs.gpr[8];
 svcpu->gpr[9] = vcpu->arch.regs.gpr[9];
 svcpu->gpr[10] = vcpu->arch.regs.gpr[10];
 svcpu->gpr[11] = vcpu->arch.regs.gpr[11];
 svcpu->gpr[12] = vcpu->arch.regs.gpr[12];
 svcpu->gpr[13] = vcpu->arch.regs.gpr[13];
 svcpu->cr = vcpu->arch.regs.ccr;
 svcpu->xer = vcpu->arch.regs.xer;
 svcpu->ctr = vcpu->arch.regs.ctr;
 svcpu->lr = vcpu->arch.regs.link;
 svcpu->pc = vcpu->arch.regs.nip;







 vcpu->arch.entry_tb = get_tb();
 vcpu->arch.entry_vtb = get_vtb();
 if (cpu_has_feature(CPU_FTR_ARCH_207S))
  vcpu->arch.entry_ic = mfspr(SPRN_IC);
 svcpu->in_use = 1;

 svcpu_put(svcpu);
}
