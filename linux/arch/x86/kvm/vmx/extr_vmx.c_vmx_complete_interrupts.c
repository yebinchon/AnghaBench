
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_vmx {int idt_vectoring_info; int vcpu; } ;


 int IDT_VECTORING_ERROR_CODE ;
 int VM_EXIT_INSTRUCTION_LEN ;
 int __vmx_complete_interrupts (int *,int ,int ,int ) ;

__attribute__((used)) static void vmx_complete_interrupts(struct vcpu_vmx *vmx)
{
 __vmx_complete_interrupts(&vmx->vcpu, vmx->idt_vectoring_info,
      VM_EXIT_INSTRUCTION_LEN,
      IDT_VECTORING_ERROR_CODE);
}
