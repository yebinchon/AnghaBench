
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmcs12 {int cpu_based_vm_exec_control; } ;



__attribute__((used)) static inline bool nested_cpu_has(struct vmcs12 *vmcs12, u32 bit)
{
 return vmcs12->cpu_based_vm_exec_control & bit;
}
