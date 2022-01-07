
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


union vaddress {unsigned long addr; int rfx; int rsx; int rtx; int sx; int px; int sx01; int rtx01; int rsx01; int rfx01; } ;
struct TYPE_12__ {int p; int pto; } ;
struct TYPE_11__ {int p; int iep; int sfaa; } ;
union segment_table_entry {TYPE_6__ fc0; TYPE_5__ fc1; int fc; int cs; int tt; int i; int val; } ;
struct TYPE_10__ {int p; int sto; int tl; int tf; } ;
struct TYPE_9__ {int p; int iep; int rfaa; } ;
union region3_table_entry {TYPE_4__ fc0; TYPE_3__ fc1; int fc; int cr; int tt; int i; int val; } ;
union region2_table_entry {int p; int rto; int tl; int tf; int tt; int i; int val; } ;
union region1_table_entry {int p; int rto; int tl; int tf; int tt; int i; int val; } ;
union raddress {unsigned long addr; int pfra; int sfaa; int rfaa; } ;
union page_table_entry {int p; int iep; int pfra; scalar_t__ z; scalar_t__ i; int val; } ;
union ctlreg0 {int iep; scalar_t__ edat; int val; } ;
union asce {int origin; int dt; int p; int tl; scalar_t__ r; } ;
struct TYPE_8__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {int kvm; TYPE_2__ arch; } ;
typedef enum prot_type { ____Placeholder_prot_type } prot_type ;
typedef enum gacc_mode { ____Placeholder_gacc_mode } gacc_mode ;
struct TYPE_7__ {int * gcr; } ;






 unsigned long EFAULT ;
 int GACC_IFETCH ;
 int GACC_STORE ;
 int PAGE_SIZE ;
 unsigned long PGM_ADDRESSING ;
 unsigned long PGM_ASCE_TYPE ;
 unsigned long PGM_PAGE_TRANSLATION ;
 unsigned long PGM_PROTECTION ;
 unsigned long PGM_REGION_FIRST_TRANS ;
 unsigned long PGM_REGION_SECOND_TRANS ;
 unsigned long PGM_REGION_THIRD_TRANS ;
 unsigned long PGM_SEGMENT_TRANSLATION ;
 unsigned long PGM_TRANSLATION_SPEC ;
 int PROT_TYPE_DAT ;
 int PROT_TYPE_IEP ;
 int TABLE_TYPE_REGION1 ;
 int TABLE_TYPE_REGION2 ;
 int TABLE_TYPE_REGION3 ;
 int TABLE_TYPE_SEGMENT ;
 scalar_t__ deref_table (int ,unsigned long,int *) ;
 scalar_t__ kvm_is_error_gpa (int ,unsigned long) ;
 unsigned long kvm_s390_real_to_abs (struct kvm_vcpu*,unsigned long) ;
 scalar_t__ test_kvm_facility (int ,int) ;

__attribute__((used)) static unsigned long guest_translate(struct kvm_vcpu *vcpu, unsigned long gva,
         unsigned long *gpa, const union asce asce,
         enum gacc_mode mode, enum prot_type *prot)
{
 union vaddress vaddr = {.addr = gva};
 union raddress raddr = {.addr = gva};
 union page_table_entry pte;
 int dat_protection = 0;
 int iep_protection = 0;
 union ctlreg0 ctlreg0;
 unsigned long ptr;
 int edat1, edat2, iep;

 ctlreg0.val = vcpu->arch.sie_block->gcr[0];
 edat1 = ctlreg0.edat && test_kvm_facility(vcpu->kvm, 8);
 edat2 = edat1 && test_kvm_facility(vcpu->kvm, 78);
 iep = ctlreg0.iep && test_kvm_facility(vcpu->kvm, 130);
 if (asce.r)
  goto real_address;
 ptr = asce.origin * PAGE_SIZE;
 switch (asce.dt) {
 case 131:
  if (vaddr.rfx01 > asce.tl)
   return PGM_REGION_FIRST_TRANS;
  ptr += vaddr.rfx * 8;
  break;
 case 130:
  if (vaddr.rfx)
   return PGM_ASCE_TYPE;
  if (vaddr.rsx01 > asce.tl)
   return PGM_REGION_SECOND_TRANS;
  ptr += vaddr.rsx * 8;
  break;
 case 129:
  if (vaddr.rfx || vaddr.rsx)
   return PGM_ASCE_TYPE;
  if (vaddr.rtx01 > asce.tl)
   return PGM_REGION_THIRD_TRANS;
  ptr += vaddr.rtx * 8;
  break;
 case 128:
  if (vaddr.rfx || vaddr.rsx || vaddr.rtx)
   return PGM_ASCE_TYPE;
  if (vaddr.sx01 > asce.tl)
   return PGM_SEGMENT_TRANSLATION;
  ptr += vaddr.sx * 8;
  break;
 }
 switch (asce.dt) {
 case 131: {
  union region1_table_entry rfte;

  if (kvm_is_error_gpa(vcpu->kvm, ptr))
   return PGM_ADDRESSING;
  if (deref_table(vcpu->kvm, ptr, &rfte.val))
   return -EFAULT;
  if (rfte.i)
   return PGM_REGION_FIRST_TRANS;
  if (rfte.tt != TABLE_TYPE_REGION1)
   return PGM_TRANSLATION_SPEC;
  if (vaddr.rsx01 < rfte.tf || vaddr.rsx01 > rfte.tl)
   return PGM_REGION_SECOND_TRANS;
  if (edat1)
   dat_protection |= rfte.p;
  ptr = rfte.rto * PAGE_SIZE + vaddr.rsx * 8;
 }

 case 130: {
  union region2_table_entry rste;

  if (kvm_is_error_gpa(vcpu->kvm, ptr))
   return PGM_ADDRESSING;
  if (deref_table(vcpu->kvm, ptr, &rste.val))
   return -EFAULT;
  if (rste.i)
   return PGM_REGION_SECOND_TRANS;
  if (rste.tt != TABLE_TYPE_REGION2)
   return PGM_TRANSLATION_SPEC;
  if (vaddr.rtx01 < rste.tf || vaddr.rtx01 > rste.tl)
   return PGM_REGION_THIRD_TRANS;
  if (edat1)
   dat_protection |= rste.p;
  ptr = rste.rto * PAGE_SIZE + vaddr.rtx * 8;
 }

 case 129: {
  union region3_table_entry rtte;

  if (kvm_is_error_gpa(vcpu->kvm, ptr))
   return PGM_ADDRESSING;
  if (deref_table(vcpu->kvm, ptr, &rtte.val))
   return -EFAULT;
  if (rtte.i)
   return PGM_REGION_THIRD_TRANS;
  if (rtte.tt != TABLE_TYPE_REGION3)
   return PGM_TRANSLATION_SPEC;
  if (rtte.cr && asce.p && edat2)
   return PGM_TRANSLATION_SPEC;
  if (rtte.fc && edat2) {
   dat_protection |= rtte.fc1.p;
   iep_protection = rtte.fc1.iep;
   raddr.rfaa = rtte.fc1.rfaa;
   goto absolute_address;
  }
  if (vaddr.sx01 < rtte.fc0.tf)
   return PGM_SEGMENT_TRANSLATION;
  if (vaddr.sx01 > rtte.fc0.tl)
   return PGM_SEGMENT_TRANSLATION;
  if (edat1)
   dat_protection |= rtte.fc0.p;
  ptr = rtte.fc0.sto * PAGE_SIZE + vaddr.sx * 8;
 }

 case 128: {
  union segment_table_entry ste;

  if (kvm_is_error_gpa(vcpu->kvm, ptr))
   return PGM_ADDRESSING;
  if (deref_table(vcpu->kvm, ptr, &ste.val))
   return -EFAULT;
  if (ste.i)
   return PGM_SEGMENT_TRANSLATION;
  if (ste.tt != TABLE_TYPE_SEGMENT)
   return PGM_TRANSLATION_SPEC;
  if (ste.cs && asce.p)
   return PGM_TRANSLATION_SPEC;
  if (ste.fc && edat1) {
   dat_protection |= ste.fc1.p;
   iep_protection = ste.fc1.iep;
   raddr.sfaa = ste.fc1.sfaa;
   goto absolute_address;
  }
  dat_protection |= ste.fc0.p;
  ptr = ste.fc0.pto * (PAGE_SIZE / 2) + vaddr.px * 8;
 }
 }
 if (kvm_is_error_gpa(vcpu->kvm, ptr))
  return PGM_ADDRESSING;
 if (deref_table(vcpu->kvm, ptr, &pte.val))
  return -EFAULT;
 if (pte.i)
  return PGM_PAGE_TRANSLATION;
 if (pte.z)
  return PGM_TRANSLATION_SPEC;
 dat_protection |= pte.p;
 iep_protection = pte.iep;
 raddr.pfra = pte.pfra;
real_address:
 raddr.addr = kvm_s390_real_to_abs(vcpu, raddr.addr);
absolute_address:
 if (mode == GACC_STORE && dat_protection) {
  *prot = PROT_TYPE_DAT;
  return PGM_PROTECTION;
 }
 if (mode == GACC_IFETCH && iep_protection && iep) {
  *prot = PROT_TYPE_IEP;
  return PGM_PROTECTION;
 }
 if (kvm_is_error_gpa(vcpu->kvm, raddr.addr))
  return PGM_ADDRESSING;
 *gpa = raddr.addr;
 return 0;
}
