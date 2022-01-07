
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int wired_tlb_limit; int wired_tlb_used; struct kvm_mips_tlb* wired_tlb; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_mips_tlb {scalar_t__ tlb_mask; scalar_t__* tlb_lo; int tlb_hi; } ;


 int GFP_ATOMIC ;
 unsigned int MIPSR6_WIRED_WIRED ;
 int UNIQUE_GUEST_ENTRYHI (int) ;
 scalar_t__ WARN_ON (int) ;
 struct kvm_mips_tlb* krealloc (struct kvm_mips_tlb*,unsigned int,int ) ;
 int kvm_vz_save_guesttlb (struct kvm_mips_tlb*,int ,unsigned int) ;
 unsigned int read_gc0_wired () ;

__attribute__((used)) static void kvm_vz_vcpu_save_wired(struct kvm_vcpu *vcpu)
{
 unsigned int wired = read_gc0_wired();
 struct kvm_mips_tlb *tlbs;
 int i;


 wired &= MIPSR6_WIRED_WIRED;
 if (wired > vcpu->arch.wired_tlb_limit) {
  tlbs = krealloc(vcpu->arch.wired_tlb, wired *
    sizeof(*vcpu->arch.wired_tlb), GFP_ATOMIC);
  if (WARN_ON(!tlbs)) {

   wired = vcpu->arch.wired_tlb_limit;
  } else {
   vcpu->arch.wired_tlb = tlbs;
   vcpu->arch.wired_tlb_limit = wired;
  }
 }

 if (wired)

  kvm_vz_save_guesttlb(vcpu->arch.wired_tlb, 0, wired);

 for (i = wired; i < vcpu->arch.wired_tlb_used; ++i) {
  vcpu->arch.wired_tlb[i].tlb_hi = UNIQUE_GUEST_ENTRYHI(i);
  vcpu->arch.wired_tlb[i].tlb_lo[0] = 0;
  vcpu->arch.wired_tlb[i].tlb_lo[1] = 0;
  vcpu->arch.wired_tlb[i].tlb_mask = 0;
 }
 vcpu->arch.wired_tlb_used = wired;
}
