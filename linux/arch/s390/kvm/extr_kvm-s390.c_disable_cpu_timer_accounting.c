
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int __disable_cpu_timer_accounting (struct kvm_vcpu*) ;
 int preempt_disable () ;
 int preempt_enable () ;

__attribute__((used)) static void disable_cpu_timer_accounting(struct kvm_vcpu *vcpu)
{
 preempt_disable();
 __disable_cpu_timer_accounting(vcpu);
 preempt_enable();
}
