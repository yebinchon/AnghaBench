
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_vcpu {TYPE_2__* kvm; } ;
struct hrtimer {int dummy; } ;
struct TYPE_6__ {int lock; struct hrtimer timer; } ;
struct kvm_pit {TYPE_3__ pit_state; } ;
struct TYPE_4__ {struct kvm_pit* vpit; } ;
struct TYPE_5__ {TYPE_1__ arch; } ;


 int HRTIMER_MODE_ABS ;
 scalar_t__ hrtimer_cancel (struct hrtimer*) ;
 int hrtimer_start_expires (struct hrtimer*,int ) ;
 int kvm_vcpu_is_bsp (struct kvm_vcpu*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void __kvm_migrate_pit_timer(struct kvm_vcpu *vcpu)
{
 struct kvm_pit *pit = vcpu->kvm->arch.vpit;
 struct hrtimer *timer;

 if (!kvm_vcpu_is_bsp(vcpu) || !pit)
  return;

 timer = &pit->pit_state.timer;
 mutex_lock(&pit->pit_state.lock);
 if (hrtimer_cancel(timer))
  hrtimer_start_expires(timer, HRTIMER_MODE_ABS);
 mutex_unlock(&pit->pit_state.lock);
}
