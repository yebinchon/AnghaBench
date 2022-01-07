
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {unsigned int nr; TYPE_3__* val; } ;
struct TYPE_5__ {TYPE_1__ guest; } ;
struct vcpu_vmx {TYPE_2__ msr_autoload; } ;
struct shared_msr_entry {int data; } ;
struct TYPE_6__ {scalar_t__ index; int value; } ;


 int GUEST_IA32_EFER ;
 scalar_t__ MSR_EFER ;
 int VM_ENTRY_LOAD_IA32_EFER ;
 scalar_t__ cpu_has_load_ia32_efer () ;
 struct shared_msr_entry* find_msr_entry (struct vcpu_vmx*,scalar_t__) ;
 int host_efer ;
 int vm_entry_controls_get (struct vcpu_vmx*) ;
 int vmcs_read64 (int ) ;

__attribute__((used)) static inline u64 nested_vmx_get_vmcs01_guest_efer(struct vcpu_vmx *vmx)
{
 struct shared_msr_entry *efer_msr;
 unsigned int i;

 if (vm_entry_controls_get(vmx) & VM_ENTRY_LOAD_IA32_EFER)
  return vmcs_read64(GUEST_IA32_EFER);

 if (cpu_has_load_ia32_efer())
  return host_efer;

 for (i = 0; i < vmx->msr_autoload.guest.nr; ++i) {
  if (vmx->msr_autoload.guest.val[i].index == MSR_EFER)
   return vmx->msr_autoload.guest.val[i].value;
 }

 efer_msr = find_msr_entry(vmx, MSR_EFER);
 if (efer_msr)
  return efer_msr->data;

 return host_efer;
}
