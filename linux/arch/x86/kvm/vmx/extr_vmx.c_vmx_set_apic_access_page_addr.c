
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef int hpa_t ;


 int APIC_ACCESS_ADDR ;
 int is_guest_mode (struct kvm_vcpu*) ;
 int vmcs_write64 (int ,int ) ;
 int vmx_flush_tlb (struct kvm_vcpu*,int) ;

__attribute__((used)) static void vmx_set_apic_access_page_addr(struct kvm_vcpu *vcpu, hpa_t hpa)
{
 if (!is_guest_mode(vcpu)) {
  vmcs_write64(APIC_ACCESS_ADDR, hpa);
  vmx_flush_tlb(vcpu, 1);
 }
}
