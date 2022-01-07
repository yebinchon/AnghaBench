
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_vmx {int dummy; } ;


 int vm_entry_controls_clearbit (struct vcpu_vmx*,unsigned long) ;
 int vm_exit_controls_clearbit (struct vcpu_vmx*,unsigned long) ;

__attribute__((used)) static void clear_atomic_switch_msr_special(struct vcpu_vmx *vmx,
  unsigned long entry, unsigned long exit)
{
 vm_entry_controls_clearbit(vmx, entry);
 vm_exit_controls_clearbit(vmx, exit);
}
