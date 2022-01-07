
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct x86_exception {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
typedef int gva_t ;
typedef int gpa_t ;
struct TYPE_3__ {int hv_evmcs; int current_vmptr; } ;
struct TYPE_4__ {TYPE_1__ nested; } ;


 int EXIT_QUALIFICATION ;
 int VMX_INSTRUCTION_INFO ;
 scalar_t__ get_vmx_mem_address (struct kvm_vcpu*,unsigned long,int ,int,int,int *) ;
 int kvm_inject_page_fault (struct kvm_vcpu*,struct x86_exception*) ;
 scalar_t__ kvm_write_guest_virt_system (struct kvm_vcpu*,int ,void*,int,struct x86_exception*) ;
 int nested_vmx_check_permission (struct kvm_vcpu*) ;
 int nested_vmx_succeed (struct kvm_vcpu*) ;
 TYPE_2__* to_vmx (struct kvm_vcpu*) ;
 scalar_t__ unlikely (int ) ;
 int vmcs_read32 (int ) ;
 unsigned long vmcs_readl (int ) ;

__attribute__((used)) static int handle_vmptrst(struct kvm_vcpu *vcpu)
{
 unsigned long exit_qual = vmcs_readl(EXIT_QUALIFICATION);
 u32 instr_info = vmcs_read32(VMX_INSTRUCTION_INFO);
 gpa_t current_vmptr = to_vmx(vcpu)->nested.current_vmptr;
 struct x86_exception e;
 gva_t gva;

 if (!nested_vmx_check_permission(vcpu))
  return 1;

 if (unlikely(to_vmx(vcpu)->nested.hv_evmcs))
  return 1;

 if (get_vmx_mem_address(vcpu, exit_qual, instr_info,
    1, sizeof(gpa_t), &gva))
  return 1;

 if (kvm_write_guest_virt_system(vcpu, gva, (void *)&current_vmptr,
     sizeof(gpa_t), &e)) {
  kvm_inject_page_fault(vcpu, &e);
  return 1;
 }
 return nested_vmx_succeed(vcpu);
}
