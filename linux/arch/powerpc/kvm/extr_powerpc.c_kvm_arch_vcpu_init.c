
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int function; } ;
struct TYPE_3__ {int exit_timing_lock; int dec_expires; TYPE_2__ dec_timer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int CLOCK_REALTIME ;
 int HRTIMER_MODE_ABS ;
 int get_tb () ;
 int hrtimer_init (TYPE_2__*,int ,int ) ;
 int kvmppc_decrementer_wakeup ;
 int kvmppc_subarch_vcpu_init (struct kvm_vcpu*) ;
 int mutex_init (int *) ;

int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
{
 int ret;

 hrtimer_init(&vcpu->arch.dec_timer, CLOCK_REALTIME, HRTIMER_MODE_ABS);
 vcpu->arch.dec_timer.function = kvmppc_decrementer_wakeup;
 vcpu->arch.dec_expires = get_tb();




 ret = kvmppc_subarch_vcpu_init(vcpu);
 return ret;
}
