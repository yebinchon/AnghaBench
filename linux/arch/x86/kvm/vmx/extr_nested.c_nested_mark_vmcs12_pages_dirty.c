
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcs12 {int virtual_apic_page_addr; int posted_intr_desc_addr; } ;
struct kvm_vcpu {int dummy; } ;
typedef int gfn_t ;


 int CPU_BASED_TPR_SHADOW ;
 int PAGE_SHIFT ;
 struct vmcs12* get_vmcs12 (struct kvm_vcpu*) ;
 int kvm_vcpu_mark_page_dirty (struct kvm_vcpu*,int) ;
 scalar_t__ nested_cpu_has (struct vmcs12*,int ) ;
 scalar_t__ nested_cpu_has_posted_intr (struct vmcs12*) ;

__attribute__((used)) static void nested_mark_vmcs12_pages_dirty(struct kvm_vcpu *vcpu)
{
 struct vmcs12 *vmcs12 = get_vmcs12(vcpu);
 gfn_t gfn;






 if (nested_cpu_has(vmcs12, CPU_BASED_TPR_SHADOW)) {
  gfn = vmcs12->virtual_apic_page_addr >> PAGE_SHIFT;
  kvm_vcpu_mark_page_dirty(vcpu, gfn);
 }

 if (nested_cpu_has_posted_intr(vmcs12)) {
  gfn = vmcs12->posted_intr_desc_addr >> PAGE_SHIFT;
  kvm_vcpu_mark_page_dirty(vcpu, gfn);
 }
}
