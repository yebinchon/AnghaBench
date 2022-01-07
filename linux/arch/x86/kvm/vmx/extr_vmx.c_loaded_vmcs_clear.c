
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loaded_vmcs {int cpu; } ;


 int __loaded_vmcs_clear ;
 int smp_call_function_single (int,int ,struct loaded_vmcs*,int) ;

void loaded_vmcs_clear(struct loaded_vmcs *loaded_vmcs)
{
 int cpu = loaded_vmcs->cpu;

 if (cpu != -1)
  smp_call_function_single(cpu,
    __loaded_vmcs_clear, loaded_vmcs, 1);
}
