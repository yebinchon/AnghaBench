
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int apic_hw_disabled ;
 int apic_sw_disabled ;
 int jump_label_rate_limit (int *,int ) ;

void kvm_lapic_init(void)
{

 jump_label_rate_limit(&apic_hw_disabled, HZ);
 jump_label_rate_limit(&apic_sw_disabled, HZ);
}
