
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_exception {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
typedef int gva_t ;
typedef int gpa_t ;


 int EXIT_QUALIFICATION ;
 int VMX_INSTRUCTION_INFO ;
 scalar_t__ get_vmx_mem_address (struct kvm_vcpu*,int ,int ,int,int,int *) ;
 int kvm_inject_page_fault (struct kvm_vcpu*,struct x86_exception*) ;
 scalar_t__ kvm_read_guest_virt (struct kvm_vcpu*,int ,int *,int,struct x86_exception*) ;
 int vmcs_read32 (int ) ;
 int vmcs_readl (int ) ;

__attribute__((used)) static int nested_vmx_get_vmptr(struct kvm_vcpu *vcpu, gpa_t *vmpointer)
{
 gva_t gva;
 struct x86_exception e;

 if (get_vmx_mem_address(vcpu, vmcs_readl(EXIT_QUALIFICATION),
    vmcs_read32(VMX_INSTRUCTION_INFO), 0,
    sizeof(*vmpointer), &gva))
  return 1;

 if (kvm_read_guest_virt(vcpu, gva, vmpointer, sizeof(*vmpointer), &e)) {
  kvm_inject_page_fault(vcpu, &e);
  return 1;
 }

 return 0;
}
