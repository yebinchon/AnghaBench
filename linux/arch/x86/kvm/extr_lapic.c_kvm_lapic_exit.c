
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int apic_hw_disabled ;
 int apic_sw_disabled ;
 int static_key_deferred_flush (int *) ;

void kvm_lapic_exit(void)
{
 static_key_deferred_flush(&apic_hw_disabled);
 static_key_deferred_flush(&apic_sw_disabled);
}
