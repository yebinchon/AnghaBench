
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpu_based_exec_ctrl; } ;


 int CPU_BASED_ACTIVATE_SECONDARY_CONTROLS ;
 TYPE_1__ vmcs_config ;

__attribute__((used)) static inline bool cpu_has_secondary_exec_ctrls(void)
{
 return vmcs_config.cpu_based_exec_ctrl &
  CPU_BASED_ACTIVATE_SECONDARY_CONTROLS;
}
