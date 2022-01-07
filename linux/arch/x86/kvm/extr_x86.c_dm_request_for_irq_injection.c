
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int kvm; TYPE_1__* run; } ;
struct TYPE_2__ {scalar_t__ request_interrupt_window; } ;


 scalar_t__ likely (int) ;
 int pic_in_kernel (int ) ;

__attribute__((used)) static int dm_request_for_irq_injection(struct kvm_vcpu *vcpu)
{
 return vcpu->run->request_interrupt_window &&
  likely(!pic_in_kernel(vcpu->kvm));
}
