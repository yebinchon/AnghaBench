
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int host_apf_reason; } ;
struct TYPE_6__ {TYPE_1__ apf; } ;
struct TYPE_7__ {TYPE_2__ arch; } ;
struct vcpu_vmx {TYPE_3__ vcpu; int exit_intr_info; } ;


 int VM_EXIT_INTR_INFO ;
 scalar_t__ is_machine_check (int ) ;
 scalar_t__ is_nmi (int ) ;
 scalar_t__ is_page_fault (int ) ;
 int kvm_after_interrupt (TYPE_3__*) ;
 int kvm_before_interrupt (TYPE_3__*) ;
 int kvm_machine_check () ;
 int kvm_read_and_reset_pf_reason () ;
 int vmcs_read32 (int ) ;

__attribute__((used)) static void handle_exception_nmi_irqoff(struct vcpu_vmx *vmx)
{
 vmx->exit_intr_info = vmcs_read32(VM_EXIT_INTR_INFO);


 if (is_page_fault(vmx->exit_intr_info))
  vmx->vcpu.arch.apf.host_apf_reason = kvm_read_and_reset_pf_reason();


 if (is_machine_check(vmx->exit_intr_info))
  kvm_machine_check();


 if (is_nmi(vmx->exit_intr_info)) {
  kvm_before_interrupt(&vmx->vcpu);
  asm("int $2");
  kvm_after_interrupt(&vmx->vcpu);
 }
}
