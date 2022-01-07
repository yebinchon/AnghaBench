
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_lapic {int sw_enabled; } ;
struct TYPE_2__ {int key; } ;


 TYPE_1__ apic_sw_disabled ;
 scalar_t__ static_key_false (int *) ;

__attribute__((used)) static inline bool kvm_apic_sw_enabled(struct kvm_lapic *apic)
{
 if (static_key_false(&apic_sw_disabled.key))
  return apic->sw_enabled;
 return 1;
}
