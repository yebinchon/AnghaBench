
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pin_based_exec_ctrl; } ;


 int CONFIG_X86_LOCAL_APIC ;
 scalar_t__ IS_ENABLED (int ) ;
 int PIN_BASED_POSTED_INTR ;
 TYPE_1__ vmcs_config ;

__attribute__((used)) static inline bool cpu_has_vmx_posted_intr(void)
{
 return IS_ENABLED(CONFIG_X86_LOCAL_APIC) &&
  vmcs_config.pin_based_exec_ctrl & PIN_BASED_POSTED_INTR;
}
