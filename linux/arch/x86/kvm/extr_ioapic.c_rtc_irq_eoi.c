
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {int vcpu_id; } ;
struct TYPE_3__ {int map; } ;
struct TYPE_4__ {int pending_eoi; TYPE_1__ dest_map; } ;
struct kvm_ioapic {TYPE_2__ rtc_status; } ;


 int rtc_status_pending_eoi_check_valid (struct kvm_ioapic*) ;
 scalar_t__ test_and_clear_bit (int ,int ) ;

__attribute__((used)) static void rtc_irq_eoi(struct kvm_ioapic *ioapic, struct kvm_vcpu *vcpu)
{
 if (test_and_clear_bit(vcpu->vcpu_id,
          ioapic->rtc_status.dest_map.map)) {
  --ioapic->rtc_status.pending_eoi;
  rtc_status_pending_eoi_check_valid(ioapic);
 }
}
