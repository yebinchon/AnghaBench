
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct vcpu_vmx {TYPE_2__* loaded_vmcs; } ;
struct TYPE_6__ {int vmexit_ctrl; } ;
struct TYPE_4__ {unsigned long cr3; unsigned long cr4; } ;
struct TYPE_5__ {TYPE_1__ host_state; } ;


 int GDT_ENTRY_TSS ;
 int HOST_CR0 ;
 int HOST_CR3 ;
 int HOST_CR4 ;
 int HOST_CS_SELECTOR ;
 int HOST_DS_SELECTOR ;
 int HOST_ES_SELECTOR ;
 int HOST_IA32_EFER ;
 int HOST_IA32_PAT ;
 int HOST_IA32_SYSENTER_CS ;
 int HOST_IA32_SYSENTER_EIP ;
 int HOST_IDTR_BASE ;
 int HOST_RIP ;
 int HOST_SS_SELECTOR ;
 int HOST_TR_SELECTOR ;
 int MSR_IA32_CR_PAT ;
 int MSR_IA32_SYSENTER_CS ;
 int MSR_IA32_SYSENTER_EIP ;
 int VM_EXIT_LOAD_IA32_PAT ;
 int WARN_ON (unsigned long) ;
 unsigned long X86_CR0_TS ;
 int __KERNEL_CS ;
 int __KERNEL_DS ;
 unsigned long __read_cr3 () ;
 scalar_t__ cpu_has_load_ia32_efer () ;
 unsigned long cr4_read_shadow () ;
 int host_efer ;
 unsigned long host_idt_base ;
 int rdmsr (int ,int,int) ;
 int rdmsrl (int ,unsigned long) ;
 unsigned long read_cr0 () ;
 TYPE_3__ vmcs_config ;
 int vmcs_write16 (int ,int) ;
 int vmcs_write32 (int ,int) ;
 int vmcs_write64 (int ,int) ;
 int vmcs_writel (int ,unsigned long) ;
 scalar_t__ vmx_vmexit ;

void vmx_set_constant_host_state(struct vcpu_vmx *vmx)
{
 u32 low32, high32;
 unsigned long tmpl;
 unsigned long cr0, cr3, cr4;

 cr0 = read_cr0();
 WARN_ON(cr0 & X86_CR0_TS);
 vmcs_writel(HOST_CR0, cr0);





 cr3 = __read_cr3();
 vmcs_writel(HOST_CR3, cr3);
 vmx->loaded_vmcs->host_state.cr3 = cr3;


 cr4 = cr4_read_shadow();
 vmcs_writel(HOST_CR4, cr4);
 vmx->loaded_vmcs->host_state.cr4 = cr4;

 vmcs_write16(HOST_CS_SELECTOR, __KERNEL_CS);
 vmcs_write16(HOST_DS_SELECTOR, __KERNEL_DS);
 vmcs_write16(HOST_ES_SELECTOR, __KERNEL_DS);

 vmcs_write16(HOST_SS_SELECTOR, __KERNEL_DS);
 vmcs_write16(HOST_TR_SELECTOR, GDT_ENTRY_TSS*8);

 vmcs_writel(HOST_IDTR_BASE, host_idt_base);

 vmcs_writel(HOST_RIP, (unsigned long)vmx_vmexit);

 rdmsr(MSR_IA32_SYSENTER_CS, low32, high32);
 vmcs_write32(HOST_IA32_SYSENTER_CS, low32);
 rdmsrl(MSR_IA32_SYSENTER_EIP, tmpl);
 vmcs_writel(HOST_IA32_SYSENTER_EIP, tmpl);

 if (vmcs_config.vmexit_ctrl & VM_EXIT_LOAD_IA32_PAT) {
  rdmsr(MSR_IA32_CR_PAT, low32, high32);
  vmcs_write64(HOST_IA32_PAT, low32 | ((u64) high32 << 32));
 }

 if (cpu_has_load_ia32_efer())
  vmcs_write64(HOST_IA32_EFER, host_efer);
}
