
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvmppc_vcore {int vtb; int dpdes; } ;
struct TYPE_3__ {int sprg3; int sprg2; int sprg1; int sprg0; int srr1; int srr0; } ;
struct TYPE_4__ {int emul_inst; int fault_gpa; int fault_dsisr; int fault_dar; int ppr; int cfar; int pid; TYPE_1__ shregs; int ic; int spurr; int purr; int hfscr; struct kvmppc_vcore* vcore; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct hv_guest_state {int heir; int asdr; int hdsisr; int hdar; int ppr; int cfar; int pidr; int * sprg; int srr1; int srr0; int vtb; int ic; int spurr; int purr; int hfscr; int dpdes; } ;






__attribute__((used)) static void save_hv_return_state(struct kvm_vcpu *vcpu, int trap,
     struct hv_guest_state *hr)
{
 struct kvmppc_vcore *vc = vcpu->arch.vcore;

 hr->dpdes = vc->dpdes;
 hr->hfscr = vcpu->arch.hfscr;
 hr->purr = vcpu->arch.purr;
 hr->spurr = vcpu->arch.spurr;
 hr->ic = vcpu->arch.ic;
 hr->vtb = vc->vtb;
 hr->srr0 = vcpu->arch.shregs.srr0;
 hr->srr1 = vcpu->arch.shregs.srr1;
 hr->sprg[0] = vcpu->arch.shregs.sprg0;
 hr->sprg[1] = vcpu->arch.shregs.sprg1;
 hr->sprg[2] = vcpu->arch.shregs.sprg2;
 hr->sprg[3] = vcpu->arch.shregs.sprg3;
 hr->pidr = vcpu->arch.pid;
 hr->cfar = vcpu->arch.cfar;
 hr->ppr = vcpu->arch.ppr;
 switch (trap) {
 case 130:
  hr->hdar = vcpu->arch.fault_dar;
  hr->hdsisr = vcpu->arch.fault_dsisr;
  hr->asdr = vcpu->arch.fault_gpa;
  break;
 case 128:
  hr->asdr = vcpu->arch.fault_gpa;
  break;
 case 129:
  hr->heir = vcpu->arch.emul_inst;
  break;
 }
}
