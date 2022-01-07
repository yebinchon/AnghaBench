
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct TYPE_4__ {int timer_mode_mask; int timer; int period; int pending; } ;
struct kvm_lapic {TYPE_2__ lapic_timer; int divide_count; TYPE_1__* vcpu; } ;
struct TYPE_3__ {int kvm; } ;
 int APIC_LDR_MASK ;
 int APIC_LVR ;
 int APIC_LVR_DIRECTED_EOI ;






 int APIC_LVT_MASKED ;


 int APIC_SPIV_APIC_ENABLED ;
 int APIC_SPIV_DIRECTED_EOI ;



 int KVM_APIC_LVT_NUM ;
 int* apic_lvt_mask ;
 int apic_lvtt_tscdeadline (struct kvm_lapic*) ;
 int apic_manage_nmi_watchdog (struct kvm_lapic*,int) ;
 int apic_send_ipi (struct kvm_lapic*,int,int) ;
 int apic_set_eoi (struct kvm_lapic*) ;
 int apic_set_spiv (struct kvm_lapic*,int) ;
 int apic_set_tpr (struct kvm_lapic*,int) ;
 int apic_update_lvtt (struct kvm_lapic*) ;
 int apic_x2apic_mode (struct kvm_lapic*) ;
 int atomic_set (int *,int ) ;
 int hrtimer_cancel (int *) ;
 int kvm_apic_set_ldr (struct kvm_lapic*,int) ;
 int kvm_apic_set_xapic_id (struct kvm_lapic*,int) ;
 int kvm_apic_sw_enabled (struct kvm_lapic*) ;
 int kvm_lapic_get_reg (struct kvm_lapic*,int) ;
 int kvm_lapic_set_reg (struct kvm_lapic*,int const,int) ;
 int recalculate_apic_map (int ) ;
 int report_tpr_access (struct kvm_lapic*,int) ;
 int restart_apic_timer (struct kvm_lapic*) ;
 int start_apic_timer (struct kvm_lapic*) ;
 int trace_kvm_apic_write (int,int) ;
 int update_divide_count (struct kvm_lapic*) ;
 int update_target_expiration (struct kvm_lapic*,int ) ;

int kvm_lapic_reg_write(struct kvm_lapic *apic, u32 reg, u32 val)
{
 int ret = 0;

 trace_kvm_apic_write(reg, val);

 switch (reg) {
 case 140:
  if (!apic_x2apic_mode(apic))
   kvm_apic_set_xapic_id(apic, val >> 24);
  else
   ret = 1;
  break;

 case 130:
  report_tpr_access(apic, 1);
  apic_set_tpr(apic, val & 0xff);
  break;

 case 144:
  apic_set_eoi(apic);
  break;

 case 139:
  if (!apic_x2apic_mode(apic))
   kvm_apic_set_ldr(apic, val & APIC_LDR_MASK);
  else
   ret = 1;
  break;

 case 145:
  if (!apic_x2apic_mode(apic)) {
   kvm_lapic_set_reg(apic, 145, val | 0x0FFFFFFF);
   recalculate_apic_map(apic->vcpu->kvm);
  } else
   ret = 1;
  break;

 case 131: {
  u32 mask = 0x3ff;
  if (kvm_lapic_get_reg(apic, APIC_LVR) & APIC_LVR_DIRECTED_EOI)
   mask |= APIC_SPIV_DIRECTED_EOI;
  apic_set_spiv(apic, val & mask);
  if (!(val & APIC_SPIV_APIC_ENABLED)) {
   int i;
   u32 lvt_val;

   for (i = 0; i < KVM_APIC_LVT_NUM; i++) {
    lvt_val = kvm_lapic_get_reg(apic,
             134 + 0x10 * i);
    kvm_lapic_set_reg(apic, 134 + 0x10 * i,
          lvt_val | APIC_LVT_MASKED);
   }
   apic_update_lvtt(apic);
   atomic_set(&apic->lapic_timer.pending, 0);

  }
  break;
 }
 case 142:

  val &= ~(1 << 12);
  apic_send_ipi(apic, val, kvm_lapic_get_reg(apic, 141));
  kvm_lapic_set_reg(apic, 142, val);
  break;

 case 141:
  if (!apic_x2apic_mode(apic))
   val &= 0xff000000;
  kvm_lapic_set_reg(apic, 141, val);
  break;

 case 138:
  apic_manage_nmi_watchdog(apic, val);

 case 133:
 case 135:
 case 137:
 case 136:

  if (!kvm_apic_sw_enabled(apic))
   val |= APIC_LVT_MASKED;

  val &= apic_lvt_mask[(reg - 134) >> 4];
  kvm_lapic_set_reg(apic, reg, val);

  break;

 case 134:
  if (!kvm_apic_sw_enabled(apic))
   val |= APIC_LVT_MASKED;
  val &= (apic_lvt_mask[0] | apic->lapic_timer.timer_mode_mask);
  kvm_lapic_set_reg(apic, 134, val);
  apic_update_lvtt(apic);
  break;

 case 128:
  if (apic_lvtt_tscdeadline(apic))
   break;

  hrtimer_cancel(&apic->lapic_timer.timer);
  kvm_lapic_set_reg(apic, 128, val);
  start_apic_timer(apic);
  break;

 case 129: {
  uint32_t old_divisor = apic->divide_count;

  kvm_lapic_set_reg(apic, 129, val);
  update_divide_count(apic);
  if (apic->divide_count != old_divisor &&
    apic->lapic_timer.period) {
   hrtimer_cancel(&apic->lapic_timer.timer);
   update_target_expiration(apic, old_divisor);
   restart_apic_timer(apic);
  }
  break;
 }
 case 143:
  if (apic_x2apic_mode(apic) && val != 0)
   ret = 1;
  break;

 case 132:
  if (apic_x2apic_mode(apic)) {
   kvm_lapic_reg_write(apic, 142, 0x40000 | (val & 0xff));
  } else
   ret = 1;
  break;
 default:
  ret = 1;
  break;
 }

 return ret;
}
