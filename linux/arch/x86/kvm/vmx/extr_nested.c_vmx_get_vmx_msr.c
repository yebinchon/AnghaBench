
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nested_vmx_msrs {int basic; int cr0_fixed0; int cr0_fixed1; int cr4_fixed0; int cr4_fixed1; int vmcs_enum; int ept_caps; int vmfunc_controls; int vpid_caps; int secondary_ctls_high; int secondary_ctls_low; int misc_high; int misc_low; int entry_ctls_high; int entry_ctls_low; int exit_ctls_high; int exit_ctls_low; int procbased_ctls_high; int procbased_ctls_low; int pinbased_ctls_high; int pinbased_ctls_low; } ;


 int CPU_BASED_ALWAYSON_WITHOUT_TRUE_MSR ;
 int PIN_BASED_ALWAYSON_WITHOUT_TRUE_MSR ;
 int VM_ENTRY_ALWAYSON_WITHOUT_TRUE_MSR ;
 int VM_EXIT_ALWAYSON_WITHOUT_TRUE_MSR ;
 int vmx_control_msr (int ,int ) ;

int vmx_get_vmx_msr(struct nested_vmx_msrs *msrs, u32 msr_index, u64 *pdata)
{
 switch (msr_index) {
 case 145:
  *pdata = msrs->basic;
  break;
 case 131:
 case 136:
  *pdata = vmx_control_msr(
   msrs->pinbased_ctls_low,
   msrs->pinbased_ctls_high);
  if (msr_index == 136)
   *pdata |= PIN_BASED_ALWAYSON_WITHOUT_TRUE_MSR;
  break;
 case 130:
 case 135:
  *pdata = vmx_control_msr(
   msrs->procbased_ctls_low,
   msrs->procbased_ctls_high);
  if (msr_index == 135)
   *pdata |= CPU_BASED_ALWAYSON_WITHOUT_TRUE_MSR;
  break;
 case 132:
 case 138:
  *pdata = vmx_control_msr(
   msrs->exit_ctls_low,
   msrs->exit_ctls_high);
  if (msr_index == 138)
   *pdata |= VM_EXIT_ALWAYSON_WITHOUT_TRUE_MSR;
  break;
 case 133:
 case 140:
  *pdata = vmx_control_msr(
   msrs->entry_ctls_low,
   msrs->entry_ctls_high);
  if (msr_index == 140)
   *pdata |= VM_ENTRY_ALWAYSON_WITHOUT_TRUE_MSR;
  break;
 case 137:
  *pdata = vmx_control_msr(
   msrs->misc_low,
   msrs->misc_high);
  break;
 case 144:
  *pdata = msrs->cr0_fixed0;
  break;
 case 143:
  *pdata = msrs->cr0_fixed1;
  break;
 case 142:
  *pdata = msrs->cr4_fixed0;
  break;
 case 141:
  *pdata = msrs->cr4_fixed1;
  break;
 case 129:
  *pdata = msrs->vmcs_enum;
  break;
 case 134:
  *pdata = vmx_control_msr(
   msrs->secondary_ctls_low,
   msrs->secondary_ctls_high);
  break;
 case 139:
  *pdata = msrs->ept_caps |
   ((u64)msrs->vpid_caps << 32);
  break;
 case 128:
  *pdata = msrs->vmfunc_controls;
  break;
 default:
  return 1;
 }

 return 0;
}
