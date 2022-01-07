
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 unsigned long APIC_ACCESS_OFFSET ;
 unsigned long APIC_ACCESS_TYPE ;
 int APIC_EOI ;
 int EXIT_QUALIFICATION ;
 int TYPE_LINEAR_APIC_INST_WRITE ;
 int fasteoi ;
 int kvm_emulate_instruction (struct kvm_vcpu*,int ) ;
 int kvm_lapic_set_eoi (struct kvm_vcpu*) ;
 int kvm_skip_emulated_instruction (struct kvm_vcpu*) ;
 scalar_t__ likely (int ) ;
 unsigned long vmcs_readl (int ) ;

__attribute__((used)) static int handle_apic_access(struct kvm_vcpu *vcpu)
{
 if (likely(fasteoi)) {
  unsigned long exit_qualification = vmcs_readl(EXIT_QUALIFICATION);
  int access_type, offset;

  access_type = exit_qualification & APIC_ACCESS_TYPE;
  offset = exit_qualification & APIC_ACCESS_OFFSET;





  if ((access_type == TYPE_LINEAR_APIC_INST_WRITE) &&
      (offset == APIC_EOI)) {
   kvm_lapic_set_eoi(vcpu);
   return kvm_skip_emulated_instruction(vcpu);
  }
 }
 return kvm_emulate_instruction(vcpu, 0);
}
