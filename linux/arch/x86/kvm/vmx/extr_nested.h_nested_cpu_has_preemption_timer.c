
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcs12 {int pin_based_vm_exec_control; } ;


 int PIN_BASED_VMX_PREEMPTION_TIMER ;

__attribute__((used)) static inline bool nested_cpu_has_preemption_timer(struct vmcs12 *vmcs12)
{
 return vmcs12->pin_based_vm_exec_control &
  PIN_BASED_VMX_PREEMPTION_TIMER;
}
