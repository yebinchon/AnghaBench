
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vcpu_vmx {int dummy; } ;


 unsigned long HOST_IA32_EFER ;
 int vm_entry_controls_setbit (struct vcpu_vmx*,unsigned long) ;
 int vm_exit_controls_setbit (struct vcpu_vmx*,unsigned long) ;
 int vmcs_write64 (unsigned long,int ) ;

__attribute__((used)) static void add_atomic_switch_msr_special(struct vcpu_vmx *vmx,
  unsigned long entry, unsigned long exit,
  unsigned long guest_val_vmcs, unsigned long host_val_vmcs,
  u64 guest_val, u64 host_val)
{
 vmcs_write64(guest_val_vmcs, guest_val);
 if (host_val_vmcs != HOST_IA32_EFER)
  vmcs_write64(host_val_vmcs, host_val);
 vm_entry_controls_setbit(vmx, entry);
 vm_exit_controls_setbit(vmx, exit);
}
