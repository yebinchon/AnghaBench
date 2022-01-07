
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hv_timer_in_use; } ;
struct kvm_lapic {TYPE_1__ lapic_timer; int vcpu; } ;
struct TYPE_4__ {int (* cancel_hv_timer ) (int ) ;} ;


 int WARN_ON (int) ;
 TYPE_2__* kvm_x86_ops ;
 int preemptible () ;
 int stub1 (int ) ;

__attribute__((used)) static void cancel_hv_timer(struct kvm_lapic *apic)
{
 WARN_ON(preemptible());
 WARN_ON(!apic->lapic_timer.hv_timer_in_use);
 kvm_x86_ops->cancel_hv_timer(apic->vcpu);
 apic->lapic_timer.hv_timer_in_use = 0;
}
