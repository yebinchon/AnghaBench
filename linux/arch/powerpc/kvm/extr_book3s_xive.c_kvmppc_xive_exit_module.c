
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * __xive_vm_h_cppr ;
 int * __xive_vm_h_eoi ;
 int * __xive_vm_h_ipi ;
 int * __xive_vm_h_ipoll ;
 int * __xive_vm_h_xirr ;

void kvmppc_xive_exit_module(void)
{
 __xive_vm_h_xirr = ((void*)0);
 __xive_vm_h_ipoll = ((void*)0);
 __xive_vm_h_ipi = ((void*)0);
 __xive_vm_h_cppr = ((void*)0);
 __xive_vm_h_eoi = ((void*)0);
}
