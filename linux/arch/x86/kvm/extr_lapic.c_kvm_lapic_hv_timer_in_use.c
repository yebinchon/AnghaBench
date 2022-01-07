
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* apic; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_4__ {int hv_timer_in_use; } ;
struct TYPE_5__ {TYPE_1__ lapic_timer; } ;


 int lapic_in_kernel (struct kvm_vcpu*) ;

bool kvm_lapic_hv_timer_in_use(struct kvm_vcpu *vcpu)
{
 if (!lapic_in_kernel(vcpu))
  return 0;

 return vcpu->arch.apic->lapic_timer.hv_timer_in_use;
}
