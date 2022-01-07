
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wdt_timer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int del_timer_sync (int *) ;

void kvmppc_subarch_vcpu_uninit(struct kvm_vcpu *vcpu)
{
 del_timer_sync(&vcpu->arch.wdt_timer);
}
