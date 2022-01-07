
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_enable_cap {int cap; int* args; scalar_t__ flags; } ;
struct TYPE_2__ {int disabled_quirks; int nr_reserved_ioapic_pins; int x2apic_format; int x2apic_broadcast_quirk_disabled; int mwait_in_guest; int hlt_in_guest; int pause_in_guest; int cstate_in_guest; int guest_can_read_msr_platform_info; int exception_payload_enabled; int irqchip_mode; } ;
struct kvm {TYPE_1__ arch; int lock; int created_vcpus; } ;


 int EEXIST ;
 int EINVAL ;






 int KVM_IRQCHIP_SPLIT ;
 int KVM_X2APIC_API_DISABLE_BROADCAST_QUIRK ;
 int KVM_X2APIC_API_USE_32BIT_IDS ;
 int KVM_X2APIC_API_VALID_FLAGS ;
 int KVM_X86_DISABLE_EXITS_CSTATE ;
 int KVM_X86_DISABLE_EXITS_HLT ;
 int KVM_X86_DISABLE_EXITS_MWAIT ;
 int KVM_X86_DISABLE_EXITS_PAUSE ;
 int KVM_X86_DISABLE_VALID_EXITS ;
 int MAX_NR_RESERVED_IOAPIC_PINS ;
 int irqchip_in_kernel (struct kvm*) ;
 int kvm_can_mwait_in_guest () ;
 int kvm_setup_empty_irq_routing (struct kvm*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smp_wmb () ;

int kvm_vm_ioctl_enable_cap(struct kvm *kvm,
       struct kvm_enable_cap *cap)
{
 int r;

 if (cap->flags)
  return -EINVAL;

 switch (cap->cap) {
 case 133:
  kvm->arch.disabled_quirks = cap->args[0];
  r = 0;
  break;
 case 130: {
  mutex_lock(&kvm->lock);
  r = -EINVAL;
  if (cap->args[0] > MAX_NR_RESERVED_IOAPIC_PINS)
   goto split_irqchip_unlock;
  r = -EEXIST;
  if (irqchip_in_kernel(kvm))
   goto split_irqchip_unlock;
  if (kvm->created_vcpus)
   goto split_irqchip_unlock;
  r = kvm_setup_empty_irq_routing(kvm);
  if (r)
   goto split_irqchip_unlock;

  smp_wmb();
  kvm->arch.irqchip_mode = KVM_IRQCHIP_SPLIT;
  kvm->arch.nr_reserved_ioapic_pins = cap->args[0];
  r = 0;
split_irqchip_unlock:
  mutex_unlock(&kvm->lock);
  break;
 }
 case 129:
  r = -EINVAL;
  if (cap->args[0] & ~KVM_X2APIC_API_VALID_FLAGS)
   break;

  if (cap->args[0] & KVM_X2APIC_API_USE_32BIT_IDS)
   kvm->arch.x2apic_format = 1;
  if (cap->args[0] & KVM_X2APIC_API_DISABLE_BROADCAST_QUIRK)
   kvm->arch.x2apic_broadcast_quirk_disabled = 1;

  r = 0;
  break;
 case 128:
  r = -EINVAL;
  if (cap->args[0] & ~KVM_X86_DISABLE_VALID_EXITS)
   break;

  if ((cap->args[0] & KVM_X86_DISABLE_EXITS_MWAIT) &&
   kvm_can_mwait_in_guest())
   kvm->arch.mwait_in_guest = 1;
  if (cap->args[0] & KVM_X86_DISABLE_EXITS_HLT)
   kvm->arch.hlt_in_guest = 1;
  if (cap->args[0] & KVM_X86_DISABLE_EXITS_PAUSE)
   kvm->arch.pause_in_guest = 1;
  if (cap->args[0] & KVM_X86_DISABLE_EXITS_CSTATE)
   kvm->arch.cstate_in_guest = 1;
  r = 0;
  break;
 case 131:
  kvm->arch.guest_can_read_msr_platform_info = cap->args[0];
  r = 0;
  break;
 case 132:
  kvm->arch.exception_payload_enabled = cap->args[0];
  r = 0;
  break;
 default:
  r = -EINVAL;
  break;
 }
 return r;
}
