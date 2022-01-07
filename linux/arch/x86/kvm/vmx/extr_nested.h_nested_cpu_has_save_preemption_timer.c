
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcs12 {int vm_exit_controls; } ;


 int VM_EXIT_SAVE_VMX_PREEMPTION_TIMER ;

__attribute__((used)) static inline bool nested_cpu_has_save_preemption_timer(struct vmcs12 *vmcs12)
{
 return vmcs12->vm_exit_controls &
     VM_EXIT_SAVE_VMX_PREEMPTION_TIMER;
}
