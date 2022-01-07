
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __xive_vm_h_cppr ;
 int __xive_vm_h_eoi ;
 int __xive_vm_h_ipi ;
 int __xive_vm_h_ipoll ;
 int __xive_vm_h_xirr ;
 int xive_vm_h_cppr ;
 int xive_vm_h_eoi ;
 int xive_vm_h_ipi ;
 int xive_vm_h_ipoll ;
 int xive_vm_h_xirr ;

void kvmppc_xive_init_module(void)
{
 __xive_vm_h_xirr = xive_vm_h_xirr;
 __xive_vm_h_ipoll = xive_vm_h_ipoll;
 __xive_vm_h_ipi = xive_vm_h_ipi;
 __xive_vm_h_cppr = xive_vm_h_cppr;
 __xive_vm_h_eoi = xive_vm_h_eoi;
}
