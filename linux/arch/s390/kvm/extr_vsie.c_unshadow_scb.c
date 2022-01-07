
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_s390_sie_block {int icptcode; void* gcr; int fpf; int ihcpu; int pp; int gg15; int gg14; int gpsw; int todpr; int ckc; int cputm; int gbea; int ipb; int ipa; int icptstatus; } ;
struct vsie_page {struct kvm_s390_sie_block* scb_o; struct kvm_s390_sie_block scb_s; } ;
struct kvm_vcpu {int kvm; } ;


 int FPF_BPBC ;




 int memcpy (void*,void*,int) ;
 scalar_t__ test_kvm_facility (int ,int) ;

__attribute__((used)) static void unshadow_scb(struct kvm_vcpu *vcpu, struct vsie_page *vsie_page)
{
 struct kvm_s390_sie_block *scb_s = &vsie_page->scb_s;
 struct kvm_s390_sie_block *scb_o = vsie_page->scb_o;


 scb_o->icptcode = scb_s->icptcode;
 scb_o->icptstatus = scb_s->icptstatus;
 scb_o->ipa = scb_s->ipa;
 scb_o->ipb = scb_s->ipb;
 scb_o->gbea = scb_s->gbea;


 scb_o->cputm = scb_s->cputm;
 scb_o->ckc = scb_s->ckc;
 scb_o->todpr = scb_s->todpr;


 scb_o->gpsw = scb_s->gpsw;
 scb_o->gg14 = scb_s->gg14;
 scb_o->gg15 = scb_s->gg15;
 memcpy(scb_o->gcr, scb_s->gcr, 128);
 scb_o->pp = scb_s->pp;


 if (test_kvm_facility(vcpu->kvm, 82)) {
  scb_o->fpf &= ~FPF_BPBC;
  scb_o->fpf |= scb_s->fpf & FPF_BPBC;
 }


 switch (scb_s->icptcode) {
 case 128:
 case 130:
 case 131:
  memcpy((void *)((u64)scb_o + 0xc0),
         (void *)((u64)scb_s + 0xc0), 0xf0 - 0xc0);
  break;
 case 129:

  memcpy((void *)((u64)scb_o + 0xc0),
         (void *)((u64)scb_s + 0xc0), 0xd0 - 0xc0);
  break;
 }

 if (scb_s->ihcpu != 0xffffU)
  scb_o->ihcpu = scb_s->ihcpu;
}
