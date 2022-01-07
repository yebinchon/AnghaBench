
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long long dec; int dec_jiffies; int dec_timer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int HRTIMER_MODE_REL ;
 int NSEC_PER_SEC ;
 unsigned long do_div (unsigned long long,int ) ;
 int get_tb () ;
 int hrtimer_start (int *,int ,int ) ;
 int hrtimer_try_to_cancel (int *) ;
 int ktime_set (unsigned long long,unsigned long) ;
 int kvmppc_core_dequeue_dec (struct kvm_vcpu*) ;
 int pr_debug (char*,unsigned long long) ;
 unsigned long long tb_to_ns (unsigned long long) ;

void kvmppc_emulate_dec(struct kvm_vcpu *vcpu)
{
 unsigned long dec_nsec;
 unsigned long long dec_time;

 pr_debug("mtDEC: %lx\n", vcpu->arch.dec);
 hrtimer_try_to_cancel(&vcpu->arch.dec_timer);
 dec_time = vcpu->arch.dec;




 dec_time = tb_to_ns(dec_time);
 dec_nsec = do_div(dec_time, NSEC_PER_SEC);
 hrtimer_start(&vcpu->arch.dec_timer,
  ktime_set(dec_time, dec_nsec), HRTIMER_MODE_REL);
 vcpu->arch.dec_jiffies = get_tb();
}
