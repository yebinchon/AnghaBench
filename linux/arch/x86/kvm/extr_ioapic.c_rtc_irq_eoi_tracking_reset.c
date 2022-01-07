
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int map; } ;
struct TYPE_4__ {TYPE_1__ dest_map; scalar_t__ pending_eoi; } ;
struct kvm_ioapic {TYPE_2__ rtc_status; } ;


 int KVM_MAX_VCPU_ID ;
 int bitmap_zero (int ,int ) ;

__attribute__((used)) static void rtc_irq_eoi_tracking_reset(struct kvm_ioapic *ioapic)
{
 ioapic->rtc_status.pending_eoi = 0;
 bitmap_zero(ioapic->rtc_status.dest_map.map, KVM_MAX_VCPU_ID);
}
