
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loaded_vmcs {int cpu; scalar_t__ launched; scalar_t__ shadow_vmcs; scalar_t__ vmcs; } ;


 int vmcs_clear (scalar_t__) ;

void loaded_vmcs_init(struct loaded_vmcs *loaded_vmcs)
{
 vmcs_clear(loaded_vmcs->vmcs);
 if (loaded_vmcs->shadow_vmcs && loaded_vmcs->launched)
  vmcs_clear(loaded_vmcs->shadow_vmcs);
 loaded_vmcs->cpu = -1;
 loaded_vmcs->launched = 0;
}
