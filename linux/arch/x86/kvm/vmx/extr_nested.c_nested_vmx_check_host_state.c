
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmcs12 {int host_cr4; int host_ia32_sysenter_esp; int host_ia32_sysenter_eip; int vm_exit_controls; int vm_entry_controls; int host_rip; int host_cs_selector; int host_ss_selector; int host_ds_selector; int host_es_selector; int host_fs_selector; int host_gs_selector; int host_tr_selector; int host_fs_base; int host_gs_base; int host_gdtr_base; int host_idtr_base; int host_tr_base; int host_ia32_efer; int host_ia32_pat; int host_cr3; int host_cr0; } ;
struct TYPE_2__ {int efer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ CC (int) ;
 int EFER_LMA ;
 int EFER_LME ;
 int EINVAL ;
 int SEGMENT_RPL_MASK ;
 int SEGMENT_TI_MASK ;
 int VM_ENTRY_IA32E_MODE ;
 int VM_EXIT_HOST_ADDR_SPACE_SIZE ;
 int VM_EXIT_LOAD_IA32_EFER ;
 int VM_EXIT_LOAD_IA32_PAT ;
 int X86_CR4_PAE ;
 int X86_CR4_PCIDE ;
 int is_noncanonical_address (int,struct kvm_vcpu*) ;
 int kvm_pat_valid (int ) ;
 int kvm_valid_efer (struct kvm_vcpu*,int) ;
 int nested_cr3_valid (struct kvm_vcpu*,int ) ;
 int nested_host_cr0_valid (struct kvm_vcpu*,int ) ;
 int nested_host_cr4_valid (struct kvm_vcpu*,int) ;

__attribute__((used)) static int nested_vmx_check_host_state(struct kvm_vcpu *vcpu,
           struct vmcs12 *vmcs12)
{
 bool ia32e;

 if (CC(!nested_host_cr0_valid(vcpu, vmcs12->host_cr0)) ||
     CC(!nested_host_cr4_valid(vcpu, vmcs12->host_cr4)) ||
     CC(!nested_cr3_valid(vcpu, vmcs12->host_cr3)))
  return -EINVAL;

 if (CC(is_noncanonical_address(vmcs12->host_ia32_sysenter_esp, vcpu)) ||
     CC(is_noncanonical_address(vmcs12->host_ia32_sysenter_eip, vcpu)))
  return -EINVAL;

 if ((vmcs12->vm_exit_controls & VM_EXIT_LOAD_IA32_PAT) &&
     CC(!kvm_pat_valid(vmcs12->host_ia32_pat)))
  return -EINVAL;




 ia32e = 0;


 if (ia32e) {
  if (CC(!(vmcs12->vm_exit_controls & VM_EXIT_HOST_ADDR_SPACE_SIZE)) ||
      CC(!(vmcs12->host_cr4 & X86_CR4_PAE)))
   return -EINVAL;
 } else {
  if (CC(vmcs12->vm_exit_controls & VM_EXIT_HOST_ADDR_SPACE_SIZE) ||
      CC(vmcs12->vm_entry_controls & VM_ENTRY_IA32E_MODE) ||
      CC(vmcs12->host_cr4 & X86_CR4_PCIDE) ||
      CC((vmcs12->host_rip) >> 32))
   return -EINVAL;
 }

 if (CC(vmcs12->host_cs_selector & (SEGMENT_RPL_MASK | SEGMENT_TI_MASK)) ||
     CC(vmcs12->host_ss_selector & (SEGMENT_RPL_MASK | SEGMENT_TI_MASK)) ||
     CC(vmcs12->host_ds_selector & (SEGMENT_RPL_MASK | SEGMENT_TI_MASK)) ||
     CC(vmcs12->host_es_selector & (SEGMENT_RPL_MASK | SEGMENT_TI_MASK)) ||
     CC(vmcs12->host_fs_selector & (SEGMENT_RPL_MASK | SEGMENT_TI_MASK)) ||
     CC(vmcs12->host_gs_selector & (SEGMENT_RPL_MASK | SEGMENT_TI_MASK)) ||
     CC(vmcs12->host_tr_selector & (SEGMENT_RPL_MASK | SEGMENT_TI_MASK)) ||
     CC(vmcs12->host_cs_selector == 0) ||
     CC(vmcs12->host_tr_selector == 0) ||
     CC(vmcs12->host_ss_selector == 0 && !ia32e))
  return -EINVAL;
 if (vmcs12->vm_exit_controls & VM_EXIT_LOAD_IA32_EFER) {
  if (CC(!kvm_valid_efer(vcpu, vmcs12->host_ia32_efer)) ||
      CC(ia32e != !!(vmcs12->host_ia32_efer & EFER_LMA)) ||
      CC(ia32e != !!(vmcs12->host_ia32_efer & EFER_LME)))
   return -EINVAL;
 }

 return 0;
}
