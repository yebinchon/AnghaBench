
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpu_based_2nd_exec_ctrl; } ;


 int SECONDARY_EXEC_ENABLE_USR_WAIT_PAUSE ;
 TYPE_1__ vmcs_config ;

__attribute__((used)) static inline bool vmx_waitpkg_supported(void)
{
 return vmcs_config.cpu_based_2nd_exec_ctrl &
  SECONDARY_EXEC_ENABLE_USR_WAIT_PAUSE;
}
