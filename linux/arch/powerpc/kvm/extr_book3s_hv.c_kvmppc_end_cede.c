
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ timer_running; int dec_timer; scalar_t__ ceded; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int hrtimer_try_to_cancel (int *) ;

__attribute__((used)) static void kvmppc_end_cede(struct kvm_vcpu *vcpu)
{
 vcpu->arch.ceded = 0;
 if (vcpu->arch.timer_running) {
  hrtimer_try_to_cancel(&vcpu->arch.dec_timer);
  vcpu->arch.timer_running = 0;
 }
}
