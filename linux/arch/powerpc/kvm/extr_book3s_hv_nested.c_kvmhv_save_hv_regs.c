
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvmppc_vcore {int pcr; int vtb; int tb_offset; int dpdes; } ;
struct TYPE_3__ {int sprg3; int sprg2; int sprg1; int sprg0; int srr1; int srr0; } ;
struct TYPE_4__ {int ppr; int cfar; int pid; TYPE_1__ shregs; int ic; int spurr; int purr; int ciabr; int dawrx; int dawr; int hfscr; struct kvmppc_vcore* vcore; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct hv_guest_state {int pcr; int ppr; int cfar; int pidr; int * sprg; int srr1; int srr0; int vtb; int ic; int spurr; int purr; int ciabr; int dawrx0; int dawr0; int tb_offset; int hfscr; int dpdes; } ;


 int PCR_MASK ;

void kvmhv_save_hv_regs(struct kvm_vcpu *vcpu, struct hv_guest_state *hr)
{
 struct kvmppc_vcore *vc = vcpu->arch.vcore;

 hr->pcr = vc->pcr | PCR_MASK;
 hr->dpdes = vc->dpdes;
 hr->hfscr = vcpu->arch.hfscr;
 hr->tb_offset = vc->tb_offset;
 hr->dawr0 = vcpu->arch.dawr;
 hr->dawrx0 = vcpu->arch.dawrx;
 hr->ciabr = vcpu->arch.ciabr;
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
}
