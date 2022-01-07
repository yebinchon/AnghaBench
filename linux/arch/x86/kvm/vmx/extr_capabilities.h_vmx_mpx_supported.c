
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vmexit_ctrl; int vmentry_ctrl; } ;


 int VM_ENTRY_LOAD_BNDCFGS ;
 int VM_EXIT_CLEAR_BNDCFGS ;
 TYPE_1__ vmcs_config ;

__attribute__((used)) static inline bool vmx_mpx_supported(void)
{
 return (vmcs_config.vmexit_ctrl & VM_EXIT_CLEAR_BNDCFGS) &&
  (vmcs_config.vmentry_ctrl & VM_ENTRY_LOAD_BNDCFGS);
}
