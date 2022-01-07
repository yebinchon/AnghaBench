
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef int gpa_t ;


 int GUEST_PHYSICAL_ADDRESS ;
 int KVM_FAST_MMIO_BUS ;
 int PFERR_RSVD_MASK ;
 int is_guest_mode (struct kvm_vcpu*) ;
 int kvm_io_bus_write (struct kvm_vcpu*,int ,int ,int ,int *) ;
 int kvm_mmu_page_fault (struct kvm_vcpu*,int ,int ,int *,int ) ;
 int kvm_skip_emulated_instruction (struct kvm_vcpu*) ;
 int trace_kvm_fast_mmio (int ) ;
 int vmcs_read64 (int ) ;

__attribute__((used)) static int handle_ept_misconfig(struct kvm_vcpu *vcpu)
{
 gpa_t gpa;





 gpa = vmcs_read64(GUEST_PHYSICAL_ADDRESS);
 if (!is_guest_mode(vcpu) &&
     !kvm_io_bus_write(vcpu, KVM_FAST_MMIO_BUS, gpa, 0, ((void*)0))) {
  trace_kvm_fast_mmio(gpa);
  return kvm_skip_emulated_instruction(vcpu);
 }

 return kvm_mmu_page_fault(vcpu, gpa, PFERR_RSVD_MASK, ((void*)0), 0);
}
