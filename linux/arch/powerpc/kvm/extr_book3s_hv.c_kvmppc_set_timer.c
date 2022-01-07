
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long dec_expires; int timer_running; int dec_timer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int HRTIMER_MODE_REL ;
 unsigned long get_tb () ;
 int hrtimer_start (int *,unsigned long,int ) ;
 int kvmppc_core_prepare_to_enter (struct kvm_vcpu*) ;
 int kvmppc_core_queue_dec (struct kvm_vcpu*) ;
 unsigned long tb_to_ns (unsigned long) ;

__attribute__((used)) static void kvmppc_set_timer(struct kvm_vcpu *vcpu)
{
 unsigned long dec_nsec, now;

 now = get_tb();
 if (now > vcpu->arch.dec_expires) {

  kvmppc_core_queue_dec(vcpu);
  kvmppc_core_prepare_to_enter(vcpu);
  return;
 }
 dec_nsec = tb_to_ns(vcpu->arch.dec_expires - now);
 hrtimer_start(&vcpu->arch.dec_timer, dec_nsec, HRTIMER_MODE_REL);
 vcpu->arch.timer_running = 1;
}
