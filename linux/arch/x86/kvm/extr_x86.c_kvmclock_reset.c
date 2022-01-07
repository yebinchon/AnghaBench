
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pv_time_enabled; scalar_t__ time; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;



__attribute__((used)) static void kvmclock_reset(struct kvm_vcpu *vcpu)
{
 vcpu->arch.pv_time_enabled = 0;
 vcpu->arch.time = 0;
}
