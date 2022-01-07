
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vmentry_ctrl; int vmexit_ctrl; } ;


 int VM_ENTRY_LOAD_IA32_EFER ;
 int VM_EXIT_LOAD_IA32_EFER ;
 TYPE_1__ vmcs_config ;

__attribute__((used)) static inline bool cpu_has_load_ia32_efer(void)
{
 return (vmcs_config.vmentry_ctrl & VM_ENTRY_LOAD_IA32_EFER) &&
        (vmcs_config.vmexit_ctrl & VM_EXIT_LOAD_IA32_EFER);
}
