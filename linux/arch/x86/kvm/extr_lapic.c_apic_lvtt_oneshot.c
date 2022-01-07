
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ timer_mode; } ;
struct kvm_lapic {TYPE_1__ lapic_timer; } ;


 scalar_t__ APIC_LVT_TIMER_ONESHOT ;

__attribute__((used)) static inline int apic_lvtt_oneshot(struct kvm_lapic *apic)
{
 return apic->lapic_timer.timer_mode == APIC_LVT_TIMER_ONESHOT;
}
