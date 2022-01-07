
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_6__ {TYPE_2__* apic; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_4__ {int timer_advance_ns; } ;
struct TYPE_5__ {TYPE_1__ lapic_timer; } ;



__attribute__((used)) static int vcpu_get_timer_advance_ns(void *data, u64 *val)
{
 struct kvm_vcpu *vcpu = (struct kvm_vcpu *) data;
 *val = vcpu->arch.apic->lapic_timer.timer_advance_ns;
 return 0;
}
