
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct vcpu_vmx {int dummy; } ;
struct shared_msr_entry {int data; } ;
struct TYPE_2__ {int efer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int EFER_LMA ;
 int EFER_LME ;
 int MSR_EFER ;
 int VM_ENTRY_IA32E_MODE ;
 struct shared_msr_entry* find_msr_entry (struct vcpu_vmx*,int ) ;
 int setup_msrs (struct vcpu_vmx*) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vm_entry_controls_clearbit (struct vcpu_vmx*,int ) ;
 int vm_entry_controls_setbit (struct vcpu_vmx*,int ) ;

void vmx_set_efer(struct kvm_vcpu *vcpu, u64 efer)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 struct shared_msr_entry *msr = find_msr_entry(vmx, MSR_EFER);

 if (!msr)
  return;

 vcpu->arch.efer = efer;
 if (efer & EFER_LMA) {
  vm_entry_controls_setbit(to_vmx(vcpu), VM_ENTRY_IA32E_MODE);
  msr->data = efer;
 } else {
  vm_entry_controls_clearbit(to_vmx(vcpu), VM_ENTRY_IA32E_MODE);

  msr->data = efer & ~EFER_LME;
 }
 setup_msrs(vmx);
}
