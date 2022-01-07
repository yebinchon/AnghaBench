
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct vcpu_vmx {int pml_pg; } ;
struct kvm_vcpu {int dummy; } ;


 int GUEST_PML_INDEX ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PML_ENTITY_NUM ;
 int WARN_ON (int) ;
 int kvm_vcpu_mark_page_dirty (struct kvm_vcpu*,int) ;
 int* page_address (int ) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmcs_read16 (int ) ;
 int vmcs_write16 (int ,int) ;

__attribute__((used)) static void vmx_flush_pml_buffer(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 u64 *pml_buf;
 u16 pml_idx;

 pml_idx = vmcs_read16(GUEST_PML_INDEX);


 if (pml_idx == (PML_ENTITY_NUM - 1))
  return;


 if (pml_idx >= PML_ENTITY_NUM)
  pml_idx = 0;
 else
  pml_idx++;

 pml_buf = page_address(vmx->pml_pg);
 for (; pml_idx < PML_ENTITY_NUM; pml_idx++) {
  u64 gpa;

  gpa = pml_buf[pml_idx];
  WARN_ON(gpa & (PAGE_SIZE - 1));
  kvm_vcpu_mark_page_dirty(vcpu, gpa >> PAGE_SHIFT);
 }


 vmcs_write16(GUEST_PML_INDEX, PML_ENTITY_NUM - 1);
}
