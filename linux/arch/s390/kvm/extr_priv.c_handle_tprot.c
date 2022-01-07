
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_8__ {TYPE_3__* sie_block; } ;
struct TYPE_5__ {int instruction_tprot; } ;
struct kvm_vcpu {TYPE_4__ arch; int kvm; TYPE_1__ stat; } ;
struct TYPE_6__ {int mask; } ;
struct TYPE_7__ {TYPE_2__ gpsw; } ;


 int EOPNOTSUPP ;
 int GACC_FETCH ;
 int GACC_STORE ;
 int PGM_ADDRESSING ;
 int PGM_PRIVILEGED_OP ;
 int PGM_PROTECTION ;
 int PGM_TRANSLATION_SPEC ;
 int PSW_MASK_DAT ;
 int PSW_MASK_PSTATE ;
 unsigned long gfn_to_hva_prot (int ,int ,int*) ;
 int gpa_to_gfn (unsigned long) ;
 int guest_translate_address (struct kvm_vcpu*,int,int ,unsigned long*,int ) ;
 int ipte_lock (struct kvm_vcpu*) ;
 int ipte_unlock (struct kvm_vcpu*) ;
 scalar_t__ kvm_is_error_hva (unsigned long) ;
 int kvm_s390_get_base_disp_sse (struct kvm_vcpu*,int*,int*,int *,int *) ;
 int kvm_s390_inject_program_int (struct kvm_vcpu*,int) ;
 int kvm_s390_set_psw_cc (struct kvm_vcpu*,int) ;

__attribute__((used)) static int handle_tprot(struct kvm_vcpu *vcpu)
{
 u64 address1, address2;
 unsigned long hva, gpa;
 int ret = 0, cc = 0;
 bool writable;
 u8 ar;

 vcpu->stat.instruction_tprot++;

 if (vcpu->arch.sie_block->gpsw.mask & PSW_MASK_PSTATE)
  return kvm_s390_inject_program_int(vcpu, PGM_PRIVILEGED_OP);

 kvm_s390_get_base_disp_sse(vcpu, &address1, &address2, &ar, ((void*)0));




 if (address2 & 0xf0)
  return -EOPNOTSUPP;
 if (vcpu->arch.sie_block->gpsw.mask & PSW_MASK_DAT)
  ipte_lock(vcpu);
 ret = guest_translate_address(vcpu, address1, ar, &gpa, GACC_STORE);
 if (ret == PGM_PROTECTION) {

  cc = 1;
  ret = guest_translate_address(vcpu, address1, ar, &gpa,
           GACC_FETCH);
 }
 if (ret) {
  if (ret == PGM_ADDRESSING || ret == PGM_TRANSLATION_SPEC) {
   ret = kvm_s390_inject_program_int(vcpu, ret);
  } else if (ret > 0) {

   kvm_s390_set_psw_cc(vcpu, 3);
   ret = 0;
  }
  goto out_unlock;
 }

 hva = gfn_to_hva_prot(vcpu->kvm, gpa_to_gfn(gpa), &writable);
 if (kvm_is_error_hva(hva)) {
  ret = kvm_s390_inject_program_int(vcpu, PGM_ADDRESSING);
 } else {
  if (!writable)
   cc = 1;
  kvm_s390_set_psw_cc(vcpu, cc);

 }
out_unlock:
 if (vcpu->arch.sie_block->gpsw.mask & PSW_MASK_DAT)
  ipte_unlock(vcpu);
 return ret;
}
