
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int vcpu_id; } ;
struct TYPE_2__ {int idt_vectoring_info; } ;


 int EXIT_QUALIFICATION ;
 int GUEST_INTERRUPTIBILITY_INFO ;
 int GUEST_INTR_STATE_NMI ;
 unsigned long INTR_INFO_UNBLOCK_NMI ;
 int VECTORING_INFO_VALID_MASK ;
 scalar_t__ enable_vnmi ;
 TYPE_1__* to_vmx (struct kvm_vcpu*) ;
 int trace_kvm_pml_full (int ) ;
 unsigned long vmcs_readl (int ) ;
 int vmcs_set_bits (int ,int ) ;

__attribute__((used)) static int handle_pml_full(struct kvm_vcpu *vcpu)
{
 unsigned long exit_qualification;

 trace_kvm_pml_full(vcpu->vcpu_id);

 exit_qualification = vmcs_readl(EXIT_QUALIFICATION);





 if (!(to_vmx(vcpu)->idt_vectoring_info & VECTORING_INFO_VALID_MASK) &&
   enable_vnmi &&
   (exit_qualification & INTR_INFO_UNBLOCK_NMI))
  vmcs_set_bits(GUEST_INTERRUPTIBILITY_INFO,
    GUEST_INTR_STATE_NMI);





 return 1;
}
