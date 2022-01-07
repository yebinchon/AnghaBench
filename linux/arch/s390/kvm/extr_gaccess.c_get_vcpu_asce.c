
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union asce {int r; scalar_t__ val; } ;
typedef int u8 ;
struct psw_bits {int as; int dat; } ;
struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
typedef enum gacc_mode { ____Placeholder_gacc_mode } gacc_mode ;
struct TYPE_3__ {scalar_t__* gcr; int gpsw; } ;


 int GACC_IFETCH ;
 int PROT_TYPE_ALC ;




 int ar_translation (struct kvm_vcpu*,union asce*,int ,int) ;
 struct psw_bits psw_bits (int ) ;
 int trans_exc (struct kvm_vcpu*,int,unsigned long,int ,int,int ) ;

__attribute__((used)) static int get_vcpu_asce(struct kvm_vcpu *vcpu, union asce *asce,
    unsigned long ga, u8 ar, enum gacc_mode mode)
{
 int rc;
 struct psw_bits psw = psw_bits(vcpu->arch.sie_block->gpsw);

 if (!psw.dat) {
  asce->val = 0;
  asce->r = 1;
  return 0;
 }

 if ((mode == GACC_IFETCH) && (psw.as != 130))
  psw.as = 129;

 switch (psw.as) {
 case 129:
  asce->val = vcpu->arch.sie_block->gcr[1];
  return 0;
 case 128:
  asce->val = vcpu->arch.sie_block->gcr[7];
  return 0;
 case 130:
  asce->val = vcpu->arch.sie_block->gcr[13];
  return 0;
 case 131:
  rc = ar_translation(vcpu, asce, ar, mode);
  if (rc > 0)
   return trans_exc(vcpu, rc, ga, ar, mode, PROT_TYPE_ALC);
  return rc;
 }
 return 0;
}
