
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvmppc_vcore {int pcr; int vtb; int dpdes; } ;
struct TYPE_3__ {int sprg3; int sprg2; int sprg1; int sprg0; int srr1; int srr0; } ;
struct TYPE_4__ {int ppr; int cfar; int pid; TYPE_1__ shregs; int ic; int spurr; int purr; int ciabr; int dawrx; int dawr; int hfscr; struct kvmppc_vcore* vcore; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct hv_guest_state {int pcr; int ppr; int cfar; int pidr; int * sprg; int srr1; int srr0; int vtb; int ic; int spurr; int purr; int ciabr; int dawrx0; int dawr0; int hfscr; int dpdes; } ;


 int PCR_MASK ;

__attribute__((used)) static void restore_hv_regs(struct kvm_vcpu *vcpu, struct hv_guest_state *hr)
{
 struct kvmppc_vcore *vc = vcpu->arch.vcore;

 vc->pcr = hr->pcr | PCR_MASK;
 vc->dpdes = hr->dpdes;
 vcpu->arch.hfscr = hr->hfscr;
 vcpu->arch.dawr = hr->dawr0;
 vcpu->arch.dawrx = hr->dawrx0;
 vcpu->arch.ciabr = hr->ciabr;
 vcpu->arch.purr = hr->purr;
 vcpu->arch.spurr = hr->spurr;
 vcpu->arch.ic = hr->ic;
 vc->vtb = hr->vtb;
 vcpu->arch.shregs.srr0 = hr->srr0;
 vcpu->arch.shregs.srr1 = hr->srr1;
 vcpu->arch.shregs.sprg0 = hr->sprg[0];
 vcpu->arch.shregs.sprg1 = hr->sprg[1];
 vcpu->arch.shregs.sprg2 = hr->sprg[2];
 vcpu->arch.shregs.sprg3 = hr->sprg[3];
 vcpu->arch.pid = hr->pidr;
 vcpu->arch.cfar = hr->cfar;
 vcpu->arch.ppr = hr->ppr;
}
