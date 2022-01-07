
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_run {int dummy; } ;
typedef int gva_t ;


 int EMULATE_DONE ;
 int EMULATE_FAIL ;
 int get_op (unsigned int) ;
 int get_ra (unsigned int) ;
 int get_rb (unsigned int) ;
 int get_rt (unsigned int) ;
 int get_xop (unsigned int) ;
 int kvmppc_booke_emulate_op (struct kvm_run*,struct kvm_vcpu*,unsigned int,int*) ;
 int kvmppc_e500_emul_dcbtls (struct kvm_vcpu*) ;
 int kvmppc_e500_emul_ehpriv (struct kvm_run*,struct kvm_vcpu*,unsigned int,int*) ;
 int kvmppc_e500_emul_mftmr (struct kvm_vcpu*,unsigned int,int) ;
 int kvmppc_e500_emul_msgclr (struct kvm_vcpu*,int) ;
 int kvmppc_e500_emul_msgsnd (struct kvm_vcpu*,int) ;
 int kvmppc_e500_emul_tlbilx (struct kvm_vcpu*,int,int ) ;
 int kvmppc_e500_emul_tlbivax (struct kvm_vcpu*,int ) ;
 int kvmppc_e500_emul_tlbre (struct kvm_vcpu*) ;
 int kvmppc_e500_emul_tlbsx (struct kvm_vcpu*,int ) ;
 int kvmppc_e500_emul_tlbwe (struct kvm_vcpu*) ;
 int kvmppc_get_ea_indexed (struct kvm_vcpu*,int,int) ;

int kvmppc_core_emulate_op_e500(struct kvm_run *run, struct kvm_vcpu *vcpu,
    unsigned int inst, int *advance)
{
 int emulated = EMULATE_DONE;
 int ra = get_ra(inst);
 int rb = get_rb(inst);
 int rt = get_rt(inst);
 gva_t ea;

 switch (get_op(inst)) {
 case 31:
  switch (get_xop(inst)) {

  case 137:
   emulated = kvmppc_e500_emul_dcbtls(vcpu);
   break;
  case 130:
   emulated = kvmppc_e500_emul_tlbre(vcpu);
   break;

  case 128:
   emulated = kvmppc_e500_emul_tlbwe(vcpu);
   break;

  case 129:
   ea = kvmppc_get_ea_indexed(vcpu, ra, rb);
   emulated = kvmppc_e500_emul_tlbsx(vcpu, ea);
   break;

  case 132: {
   int type = rt & 0x3;
   ea = kvmppc_get_ea_indexed(vcpu, ra, rb);
   emulated = kvmppc_e500_emul_tlbilx(vcpu, type, ea);
   break;
  }

  case 131:
   ea = kvmppc_get_ea_indexed(vcpu, ra, rb);
   emulated = kvmppc_e500_emul_tlbivax(vcpu, ea);
   break;

  case 135:
   emulated = kvmppc_e500_emul_mftmr(vcpu, inst, rt);
   break;

  case 136:
   emulated = kvmppc_e500_emul_ehpriv(run, vcpu, inst,
          advance);
   break;

  default:
   emulated = EMULATE_FAIL;
  }

  break;

 default:
  emulated = EMULATE_FAIL;
 }

 if (emulated == EMULATE_FAIL)
  emulated = kvmppc_booke_emulate_op(run, vcpu, inst, advance);

 return emulated;
}
