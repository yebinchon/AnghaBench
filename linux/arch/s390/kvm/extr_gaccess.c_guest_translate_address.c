
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union asce {int r; } ;
typedef int u8 ;
struct TYPE_5__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {int kvm; TYPE_2__ arch; } ;
typedef int psw_t ;
typedef enum prot_type { ____Placeholder_prot_type } prot_type ;
typedef enum gacc_mode { ____Placeholder_gacc_mode } gacc_mode ;
struct TYPE_6__ {scalar_t__ dat; } ;
struct TYPE_4__ {int gpsw; } ;


 int GACC_STORE ;
 int PGM_ADDRESSING ;
 int PGM_PROTECTION ;
 int PROT_TYPE_LA ;
 int get_vcpu_asce (struct kvm_vcpu*,union asce*,unsigned long,int ,int) ;
 int guest_translate (struct kvm_vcpu*,unsigned long,unsigned long*,union asce,int,int*) ;
 scalar_t__ is_low_address (unsigned long) ;
 scalar_t__ kvm_is_error_gpa (int ,unsigned long) ;
 unsigned long kvm_s390_logical_to_effective (struct kvm_vcpu*,unsigned long) ;
 unsigned long kvm_s390_real_to_abs (struct kvm_vcpu*,unsigned long) ;
 scalar_t__ low_address_protection_enabled (struct kvm_vcpu*,union asce) ;
 TYPE_3__ psw_bits (int ) ;
 int trans_exc (struct kvm_vcpu*,int,unsigned long,int ,int,int) ;

int guest_translate_address(struct kvm_vcpu *vcpu, unsigned long gva, u8 ar,
       unsigned long *gpa, enum gacc_mode mode)
{
 psw_t *psw = &vcpu->arch.sie_block->gpsw;
 enum prot_type prot;
 union asce asce;
 int rc;

 gva = kvm_s390_logical_to_effective(vcpu, gva);
 rc = get_vcpu_asce(vcpu, &asce, gva, ar, mode);
 if (rc)
  return rc;
 if (is_low_address(gva) && low_address_protection_enabled(vcpu, asce)) {
  if (mode == GACC_STORE)
   return trans_exc(vcpu, PGM_PROTECTION, gva, 0,
      mode, PROT_TYPE_LA);
 }

 if (psw_bits(*psw).dat && !asce.r) {
  rc = guest_translate(vcpu, gva, gpa, asce, mode, &prot);
  if (rc > 0)
   return trans_exc(vcpu, rc, gva, 0, mode, prot);
 } else {
  *gpa = kvm_s390_real_to_abs(vcpu, gva);
  if (kvm_is_error_gpa(vcpu->kvm, *gpa))
   return trans_exc(vcpu, rc, gva, PGM_ADDRESSING, mode, 0);
 }

 return rc;
}
