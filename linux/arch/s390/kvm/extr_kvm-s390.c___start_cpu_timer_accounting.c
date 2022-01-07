
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cputm_start; int cputm_seqcount; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int WARN_ON_ONCE (int) ;
 scalar_t__ get_tod_clock_fast () ;
 int raw_write_seqcount_begin (int *) ;
 int raw_write_seqcount_end (int *) ;

__attribute__((used)) static void __start_cpu_timer_accounting(struct kvm_vcpu *vcpu)
{
 WARN_ON_ONCE(vcpu->arch.cputm_start != 0);
 raw_write_seqcount_begin(&vcpu->arch.cputm_seqcount);
 vcpu->arch.cputm_start = get_tod_clock_fast();
 raw_write_seqcount_end(&vcpu->arch.cputm_seqcount);
}
