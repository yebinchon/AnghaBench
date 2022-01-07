
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u32 ;
struct kvm_vcpu {int guest_debug; } ;
struct TYPE_6__ {unsigned int exception_bitmap; } ;
struct TYPE_4__ {scalar_t__ vm86_active; } ;
struct TYPE_5__ {TYPE_1__ rmode; } ;


 unsigned int AC_VECTOR ;
 unsigned int BP_VECTOR ;
 unsigned int DB_VECTOR ;
 int EXCEPTION_BITMAP ;
 unsigned int GP_VECTOR ;
 int KVM_GUESTDBG_ENABLE ;
 int KVM_GUESTDBG_USE_SW_BP ;
 unsigned int MC_VECTOR ;
 unsigned int PF_VECTOR ;
 unsigned int UD_VECTOR ;
 scalar_t__ enable_ept ;
 scalar_t__ enable_vmware_backdoor ;
 TYPE_3__* get_vmcs12 (struct kvm_vcpu*) ;
 scalar_t__ is_guest_mode (struct kvm_vcpu*) ;
 TYPE_2__* to_vmx (struct kvm_vcpu*) ;
 int vmcs_write32 (int ,unsigned int) ;

void update_exception_bitmap(struct kvm_vcpu *vcpu)
{
 u32 eb;

 eb = (1u << PF_VECTOR) | (1u << UD_VECTOR) | (1u << MC_VECTOR) |
      (1u << DB_VECTOR) | (1u << AC_VECTOR);






 if (enable_vmware_backdoor)
  eb |= (1u << GP_VECTOR);
 if ((vcpu->guest_debug &
      (KVM_GUESTDBG_ENABLE | KVM_GUESTDBG_USE_SW_BP)) ==
     (KVM_GUESTDBG_ENABLE | KVM_GUESTDBG_USE_SW_BP))
  eb |= 1u << BP_VECTOR;
 if (to_vmx(vcpu)->rmode.vm86_active)
  eb = ~0;
 if (enable_ept)
  eb &= ~(1u << PF_VECTOR);






 if (is_guest_mode(vcpu))
  eb |= get_vmcs12(vcpu)->exception_bitmap;

 vmcs_write32(EXCEPTION_BITMAP, eb);
}
