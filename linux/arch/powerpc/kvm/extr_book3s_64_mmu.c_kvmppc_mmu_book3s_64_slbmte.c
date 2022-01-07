
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct kvmppc_slb {int large; int tb; int esid; int vsid; int valid; int Ks; int Kp; int nx; int class; int orige; int origv; void* base_page_size; } ;
struct TYPE_2__ {int slb_nr; int hflags; struct kvmppc_slb* slb; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int BOOK3S_HFLAG_MULTI_PGSIZE ;
 int ESID_MASK ;
 int GET_ESID (int) ;
 int GET_ESID_1T (int) ;
 void* MMU_PAGE_16M ;
 void* MMU_PAGE_4K ;
 void* MMU_PAGE_64K ;
 int SID_SHIFT ;
 int SLB_ESID_V ;
 int SLB_VSID_B ;
 int SLB_VSID_B_1T ;
 int SLB_VSID_C ;
 int SLB_VSID_KP ;
 int SLB_VSID_KS ;
 int SLB_VSID_L ;
 int SLB_VSID_LP ;


 int SLB_VSID_N ;
 int dprintk (char*,int,int) ;
 int kvmppc_mmu_map_segment (struct kvm_vcpu*,int) ;
 int kvmppc_slb_sid_shift (struct kvmppc_slb*) ;

__attribute__((used)) static void kvmppc_mmu_book3s_64_slbmte(struct kvm_vcpu *vcpu, u64 rs, u64 rb)
{
 u64 esid, esid_1t;
 int slb_nr;
 struct kvmppc_slb *slbe;

 dprintk("KVM MMU: slbmte(0x%llx, 0x%llx)\n", rs, rb);

 esid = GET_ESID(rb);
 esid_1t = GET_ESID_1T(rb);
 slb_nr = rb & 0xfff;

 if (slb_nr > vcpu->arch.slb_nr)
  return;

 slbe = &vcpu->arch.slb[slb_nr];

 slbe->large = (rs & SLB_VSID_L) ? 1 : 0;
 slbe->tb = (rs & SLB_VSID_B_1T) ? 1 : 0;
 slbe->esid = slbe->tb ? esid_1t : esid;
 slbe->vsid = (rs & ~SLB_VSID_B) >> (kvmppc_slb_sid_shift(slbe) - 16);
 slbe->valid = (rb & SLB_ESID_V) ? 1 : 0;
 slbe->Ks = (rs & SLB_VSID_KS) ? 1 : 0;
 slbe->Kp = (rs & SLB_VSID_KP) ? 1 : 0;
 slbe->nx = (rs & SLB_VSID_N) ? 1 : 0;
 slbe->class = (rs & SLB_VSID_C) ? 1 : 0;

 slbe->base_page_size = MMU_PAGE_4K;
 if (slbe->large) {
  if (vcpu->arch.hflags & BOOK3S_HFLAG_MULTI_PGSIZE) {
   switch (rs & SLB_VSID_LP) {
   case 129:
    slbe->base_page_size = MMU_PAGE_16M;
    break;
   case 128:
    slbe->base_page_size = MMU_PAGE_64K;
    break;
   }
  } else
   slbe->base_page_size = MMU_PAGE_16M;
 }

 slbe->orige = rb & (ESID_MASK | SLB_ESID_V);
 slbe->origv = rs;


 kvmppc_mmu_map_segment(vcpu, esid << SID_SHIFT);
}
