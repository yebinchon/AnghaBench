
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int apic; } ;
struct kvm_vcpu {int vcpu_id; TYPE_2__* kvm; TYPE_3__ arch; } ;
struct kvm_lapic_state {scalar_t__ regs; } ;
struct TYPE_4__ {scalar_t__ x2apic_format; } ;
struct TYPE_5__ {TYPE_1__ arch; } ;


 scalar_t__ APIC_ID ;
 scalar_t__ APIC_LDR ;
 int EINVAL ;
 scalar_t__ apic_x2apic_mode (int ) ;
 int kvm_apic_calc_x2apic_ldr (int) ;

__attribute__((used)) static int kvm_apic_state_fixup(struct kvm_vcpu *vcpu,
  struct kvm_lapic_state *s, bool set)
{
 if (apic_x2apic_mode(vcpu->arch.apic)) {
  u32 *id = (u32 *)(s->regs + APIC_ID);
  u32 *ldr = (u32 *)(s->regs + APIC_LDR);

  if (vcpu->kvm->arch.x2apic_format) {
   if (*id != vcpu->vcpu_id)
    return -EINVAL;
  } else {
   if (set)
    *id >>= 24;
   else
    *id <<= 24;
  }


  if (set)
   *ldr = kvm_apic_calc_x2apic_ldr(*id);
 }

 return 0;
}
