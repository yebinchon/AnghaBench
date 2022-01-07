
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct coproc_params {int is_64bit; int CRn; int CRm; int Op1; int Op2; } ;


 int KVM_REG_ARCH_MASK ;
 int KVM_REG_ARM_32_CRN_MASK ;
 int KVM_REG_ARM_32_CRN_SHIFT ;
 int KVM_REG_ARM_32_OPC2_MASK ;
 int KVM_REG_ARM_32_OPC2_SHIFT ;
 int KVM_REG_ARM_COPROC_MASK ;
 int KVM_REG_ARM_CRM_MASK ;
 int KVM_REG_ARM_CRM_SHIFT ;
 int KVM_REG_ARM_OPC1_MASK ;
 int KVM_REG_ARM_OPC1_SHIFT ;
 int KVM_REG_SIZE_MASK ;



__attribute__((used)) static bool index_to_params(u64 id, struct coproc_params *params)
{
 switch (id & KVM_REG_SIZE_MASK) {
 case 129:

  if (id & ~(KVM_REG_ARCH_MASK | KVM_REG_SIZE_MASK
      | KVM_REG_ARM_COPROC_MASK
      | KVM_REG_ARM_32_CRN_MASK
      | KVM_REG_ARM_CRM_MASK
      | KVM_REG_ARM_OPC1_MASK
      | KVM_REG_ARM_32_OPC2_MASK))
   return 0;

  params->is_64bit = 0;
  params->CRn = ((id & KVM_REG_ARM_32_CRN_MASK)
          >> KVM_REG_ARM_32_CRN_SHIFT);
  params->CRm = ((id & KVM_REG_ARM_CRM_MASK)
          >> KVM_REG_ARM_CRM_SHIFT);
  params->Op1 = ((id & KVM_REG_ARM_OPC1_MASK)
          >> KVM_REG_ARM_OPC1_SHIFT);
  params->Op2 = ((id & KVM_REG_ARM_32_OPC2_MASK)
          >> KVM_REG_ARM_32_OPC2_SHIFT);
  return 1;
 case 128:

  if (id & ~(KVM_REG_ARCH_MASK | KVM_REG_SIZE_MASK
         | KVM_REG_ARM_COPROC_MASK
         | KVM_REG_ARM_CRM_MASK
         | KVM_REG_ARM_OPC1_MASK))
   return 0;
  params->is_64bit = 1;

  params->CRn = ((id & KVM_REG_ARM_CRM_MASK)
          >> KVM_REG_ARM_CRM_SHIFT);
  params->Op1 = ((id & KVM_REG_ARM_OPC1_MASK)
          >> KVM_REG_ARM_OPC1_SHIFT);
  params->Op2 = 0;
  params->CRm = 0;
  return 1;
 default:
  return 0;
 }
}
