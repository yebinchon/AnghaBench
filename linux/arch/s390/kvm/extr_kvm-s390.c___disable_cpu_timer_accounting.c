
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cputm_enabled; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int WARN_ON_ONCE (int) ;
 int __stop_cpu_timer_accounting (struct kvm_vcpu*) ;

__attribute__((used)) static void __disable_cpu_timer_accounting(struct kvm_vcpu *vcpu)
{
 WARN_ON_ONCE(!vcpu->arch.cputm_enabled);
 __stop_cpu_timer_accounting(vcpu);
 vcpu->arch.cputm_enabled = 0;
}
