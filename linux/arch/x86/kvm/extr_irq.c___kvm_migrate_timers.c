
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int __kvm_migrate_apic_timer (struct kvm_vcpu*) ;
 int __kvm_migrate_pit_timer (struct kvm_vcpu*) ;

void __kvm_migrate_timers(struct kvm_vcpu *vcpu)
{
 __kvm_migrate_apic_timer(vcpu);
 __kvm_migrate_pit_timer(vcpu);
}
