
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {unsigned long exit_qualification; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int gpa_t ;
struct TYPE_4__ {int idt_vectoring_info; } ;


 unsigned long EPT_VIOLATION_ACC_INSTR ;
 unsigned long EPT_VIOLATION_ACC_READ ;
 unsigned long EPT_VIOLATION_ACC_WRITE ;
 unsigned long EPT_VIOLATION_EXECUTABLE ;
 unsigned long EPT_VIOLATION_READABLE ;
 unsigned long EPT_VIOLATION_WRITABLE ;
 int EXIT_QUALIFICATION ;
 int GUEST_INTERRUPTIBILITY_INFO ;
 int GUEST_INTR_STATE_NMI ;
 int GUEST_PHYSICAL_ADDRESS ;
 unsigned long INTR_INFO_UNBLOCK_NMI ;
 int PFERR_FETCH_MASK ;
 int PFERR_GUEST_FINAL_MASK ;
 int PFERR_GUEST_PAGE_MASK ;
 int PFERR_PRESENT_MASK ;
 int PFERR_USER_MASK ;
 int PFERR_WRITE_MASK ;
 int VECTORING_INFO_VALID_MASK ;
 scalar_t__ enable_vnmi ;
 int kvm_mmu_page_fault (struct kvm_vcpu*,int ,int ,int *,int ) ;
 TYPE_2__* to_vmx (struct kvm_vcpu*) ;
 int trace_kvm_page_fault (int ,unsigned long) ;
 int vmcs_read64 (int ) ;
 unsigned long vmcs_readl (int ) ;
 int vmcs_set_bits (int ,int ) ;

__attribute__((used)) static int handle_ept_violation(struct kvm_vcpu *vcpu)
{
 unsigned long exit_qualification;
 gpa_t gpa;
 u64 error_code;

 exit_qualification = vmcs_readl(EXIT_QUALIFICATION);







 if (!(to_vmx(vcpu)->idt_vectoring_info & VECTORING_INFO_VALID_MASK) &&
   enable_vnmi &&
   (exit_qualification & INTR_INFO_UNBLOCK_NMI))
  vmcs_set_bits(GUEST_INTERRUPTIBILITY_INFO, GUEST_INTR_STATE_NMI);

 gpa = vmcs_read64(GUEST_PHYSICAL_ADDRESS);
 trace_kvm_page_fault(gpa, exit_qualification);


 error_code = (exit_qualification & EPT_VIOLATION_ACC_READ)
       ? PFERR_USER_MASK : 0;

 error_code |= (exit_qualification & EPT_VIOLATION_ACC_WRITE)
        ? PFERR_WRITE_MASK : 0;

 error_code |= (exit_qualification & EPT_VIOLATION_ACC_INSTR)
        ? PFERR_FETCH_MASK : 0;

 error_code |= (exit_qualification &
         (EPT_VIOLATION_READABLE | EPT_VIOLATION_WRITABLE |
   EPT_VIOLATION_EXECUTABLE))
        ? PFERR_PRESENT_MASK : 0;

 error_code |= (exit_qualification & 0x100) != 0 ?
        PFERR_GUEST_FINAL_MASK : PFERR_GUEST_PAGE_MASK;

 vcpu->arch.exit_qualification = exit_qualification;
 return kvm_mmu_page_fault(vcpu, gpa, error_code, ((void*)0), 0);
}
