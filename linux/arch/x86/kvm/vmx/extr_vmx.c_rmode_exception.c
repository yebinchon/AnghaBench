
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_vcpu {int guest_debug; } ;
struct TYPE_4__ {int event_exit_inst_len; } ;
struct TYPE_5__ {TYPE_1__ arch; } ;
struct TYPE_6__ {TYPE_2__ vcpu; } ;
 int KVM_GUESTDBG_SINGLESTEP ;
 int KVM_GUESTDBG_USE_HW_BP ;
 int KVM_GUESTDBG_USE_SW_BP ;




 int VM_EXIT_INSTRUCTION_LEN ;
 TYPE_3__* to_vmx (struct kvm_vcpu*) ;
 int vmcs_read32 (int ) ;

__attribute__((used)) static bool rmode_exception(struct kvm_vcpu *vcpu, int vec)
{
 switch (vec) {
 case 137:




  to_vmx(vcpu)->vcpu.arch.event_exit_inst_len =
   vmcs_read32(VM_EXIT_INSTRUCTION_LEN);
  if (vcpu->guest_debug & KVM_GUESTDBG_USE_SW_BP)
   return 0;

 case 135:
  if (vcpu->guest_debug &
   (KVM_GUESTDBG_SINGLESTEP | KVM_GUESTDBG_USE_HW_BP))
   return 0;

 case 134:
 case 130:
 case 136:
 case 128:
 case 133:
 case 129:
 case 132:
 case 131:
  return 1;
 break;
 }
 return 0;
}
