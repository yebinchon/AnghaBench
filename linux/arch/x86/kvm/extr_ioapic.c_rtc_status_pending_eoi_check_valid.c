
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pending_eoi; } ;
struct kvm_ioapic {TYPE_1__ rtc_status; } ;


 scalar_t__ WARN_ON (int) ;
 int kvm_rtc_eoi_tracking_restore_all (struct kvm_ioapic*) ;

__attribute__((used)) static void rtc_status_pending_eoi_check_valid(struct kvm_ioapic *ioapic)
{
 if (WARN_ON(ioapic->rtc_status.pending_eoi < 0))
  kvm_rtc_eoi_tracking_restore_all(ioapic);
}
