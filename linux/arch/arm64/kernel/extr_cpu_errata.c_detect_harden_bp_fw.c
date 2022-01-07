
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct arm_smccc_res {scalar_t__ a0; } ;
typedef int bp_hardening_cb_t ;
struct TYPE_2__ {scalar_t__ smccc_version; int conduit; } ;


 int ARM_SMCCC_ARCH_FEATURES_FUNC_ID ;
 int ARM_SMCCC_ARCH_WORKAROUND_1 ;
 int CONFIG_HARDEN_BRANCH_PREDICTOR ;
 scalar_t__ IS_ENABLED (int ) ;
 int MIDR_CPU_MODEL_MASK ;
 int MIDR_QCOM_FALKOR ;
 int MIDR_QCOM_FALKOR_V1 ;


 scalar_t__ SMCCC_VERSION_1_0 ;
 void* __smccc_workaround_1_smc_end ;
 void* __smccc_workaround_1_smc_start ;
 int arm_smccc_1_1_hvc (int ,int ,struct arm_smccc_res*) ;
 int arm_smccc_1_1_smc (int ,int ,struct arm_smccc_res*) ;
 int call_hvc_arch_workaround_1 ;
 int call_smc_arch_workaround_1 ;
 int install_bp_hardening_cb (int ,void*,void*) ;
 TYPE_1__ psci_ops ;
 int qcom_link_stack_sanitization ;
 int read_cpuid_id () ;

__attribute__((used)) static int detect_harden_bp_fw(void)
{
 bp_hardening_cb_t cb;
 void *smccc_start, *smccc_end;
 struct arm_smccc_res res;
 u32 midr = read_cpuid_id();

 if (psci_ops.smccc_version == SMCCC_VERSION_1_0)
  return -1;

 switch (psci_ops.conduit) {
 case 129:
  arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
      ARM_SMCCC_ARCH_WORKAROUND_1, &res);
  switch ((int)res.a0) {
  case 1:

   return 0;
  case 0:
   cb = call_hvc_arch_workaround_1;

   smccc_start = ((void*)0);
   smccc_end = ((void*)0);
   break;
  default:
   return -1;
  }
  break;

 case 128:
  arm_smccc_1_1_smc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
      ARM_SMCCC_ARCH_WORKAROUND_1, &res);
  switch ((int)res.a0) {
  case 1:

   return 0;
  case 0:
   cb = call_smc_arch_workaround_1;
   smccc_start = __smccc_workaround_1_smc_start;
   smccc_end = __smccc_workaround_1_smc_end;
   break;
  default:
   return -1;
  }
  break;

 default:
  return -1;
 }

 if (((midr & MIDR_CPU_MODEL_MASK) == MIDR_QCOM_FALKOR) ||
     ((midr & MIDR_CPU_MODEL_MASK) == MIDR_QCOM_FALKOR_V1))
  cb = qcom_link_stack_sanitization;

 if (IS_ENABLED(CONFIG_HARDEN_BRANCH_PREDICTOR))
  install_bp_hardening_cb(cb, smccc_start, smccc_end);

 return 1;
}
