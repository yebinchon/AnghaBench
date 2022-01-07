
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int efer; } ;
struct TYPE_5__ {TYPE_1__ arch; } ;
struct vcpu_vmx {TYPE_3__* guest_msrs; TYPE_2__ vcpu; } ;
struct TYPE_6__ {int data; int mask; } ;


 int EFER_LMA ;
 int EFER_LME ;
 int EFER_NX ;
 int EFER_SCE ;
 int MSR_EFER ;
 int add_atomic_switch_msr (struct vcpu_vmx*,int ,int,int,int) ;
 int clear_atomic_switch_msr (struct vcpu_vmx*,int ) ;
 scalar_t__ cpu_has_load_ia32_efer () ;
 scalar_t__ enable_ept ;
 int host_efer ;

__attribute__((used)) static bool update_transition_efer(struct vcpu_vmx *vmx, int efer_offset)
{
 u64 guest_efer = vmx->vcpu.arch.efer;
 u64 ignore_bits = 0;


 if (!enable_ept)
  guest_efer |= EFER_NX;




 ignore_bits |= EFER_SCE;
 if (cpu_has_load_ia32_efer() ||
     (enable_ept && ((vmx->vcpu.arch.efer ^ host_efer) & EFER_NX))) {
  if (!(guest_efer & EFER_LMA))
   guest_efer &= ~EFER_LME;
  if (guest_efer != host_efer)
   add_atomic_switch_msr(vmx, MSR_EFER,
           guest_efer, host_efer, 0);
  else
   clear_atomic_switch_msr(vmx, MSR_EFER);
  return 0;
 } else {
  clear_atomic_switch_msr(vmx, MSR_EFER);

  guest_efer &= ~ignore_bits;
  guest_efer |= host_efer & ignore_bits;

  vmx->guest_msrs[efer_offset].data = guest_efer;
  vmx->guest_msrs[efer_offset].mask = ~ignore_bits;

  return 1;
 }
}
