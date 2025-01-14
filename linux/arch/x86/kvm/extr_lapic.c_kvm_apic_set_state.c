
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {scalar_t__ apic_arb_prio; scalar_t__ apicv_active; struct kvm_lapic* apic; int apic_base; } ;
struct kvm_vcpu {TYPE_2__ arch; int kvm; } ;
struct kvm_lapic_state {scalar_t__ regs; } ;
struct TYPE_4__ {int timer; } ;
struct kvm_lapic {int irr_pending; int isr_count; int highest_isr_cache; scalar_t__ regs; TYPE_1__ lapic_timer; } ;
struct TYPE_6__ {int (* hwapic_isr_update ) (struct kvm_vcpu*,int ) ;int (* hwapic_irr_update ) (struct kvm_vcpu*,int ) ;int (* apicv_post_state_restore ) (struct kvm_vcpu*) ;} ;


 scalar_t__ APIC_ISR ;
 int APIC_LVT0 ;
 scalar_t__ APIC_SPIV ;
 int KVM_REQ_EVENT ;
 int apic_find_highest_irr (struct kvm_lapic*) ;
 int apic_find_highest_isr (struct kvm_lapic*) ;
 int apic_manage_nmi_watchdog (struct kvm_lapic*,int ) ;
 int apic_set_spiv (struct kvm_lapic*,int ) ;
 int apic_update_lvtt (struct kvm_lapic*) ;
 int apic_update_ppr (struct kvm_lapic*) ;
 int count_vectors (scalar_t__) ;
 int hrtimer_cancel (int *) ;
 scalar_t__ ioapic_in_kernel (int ) ;
 int kvm_apic_set_version (struct kvm_vcpu*) ;
 int kvm_apic_state_fixup (struct kvm_vcpu*,struct kvm_lapic_state*,int) ;
 int kvm_lapic_get_reg (struct kvm_lapic*,int ) ;
 int kvm_lapic_set_base (struct kvm_vcpu*,int ) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvm_rtc_eoi_tracking_restore_one (struct kvm_vcpu*) ;
 TYPE_3__* kvm_x86_ops ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int recalculate_apic_map (int ) ;
 int start_apic_timer (struct kvm_lapic*) ;
 int stub1 (struct kvm_vcpu*) ;
 int stub2 (struct kvm_vcpu*,int ) ;
 int stub3 (struct kvm_vcpu*,int ) ;
 int update_divide_count (struct kvm_lapic*) ;

int kvm_apic_set_state(struct kvm_vcpu *vcpu, struct kvm_lapic_state *s)
{
 struct kvm_lapic *apic = vcpu->arch.apic;
 int r;


 kvm_lapic_set_base(vcpu, vcpu->arch.apic_base);

 apic_set_spiv(apic, *((u32 *)(s->regs + APIC_SPIV)));

 r = kvm_apic_state_fixup(vcpu, s, 1);
 if (r)
  return r;
 memcpy(vcpu->arch.apic->regs, s->regs, sizeof(*s));

 recalculate_apic_map(vcpu->kvm);
 kvm_apic_set_version(vcpu);

 apic_update_ppr(apic);
 hrtimer_cancel(&apic->lapic_timer.timer);
 apic_update_lvtt(apic);
 apic_manage_nmi_watchdog(apic, kvm_lapic_get_reg(apic, APIC_LVT0));
 update_divide_count(apic);
 start_apic_timer(apic);
 apic->irr_pending = 1;
 apic->isr_count = vcpu->arch.apicv_active ?
    1 : count_vectors(apic->regs + APIC_ISR);
 apic->highest_isr_cache = -1;
 if (vcpu->arch.apicv_active) {
  kvm_x86_ops->apicv_post_state_restore(vcpu);
  kvm_x86_ops->hwapic_irr_update(vcpu,
    apic_find_highest_irr(apic));
  kvm_x86_ops->hwapic_isr_update(vcpu,
    apic_find_highest_isr(apic));
 }
 kvm_make_request(KVM_REQ_EVENT, vcpu);
 if (ioapic_in_kernel(vcpu->kvm))
  kvm_rtc_eoi_tracking_restore_one(vcpu);

 vcpu->arch.apic_arb_prio = 0;

 return 0;
}
