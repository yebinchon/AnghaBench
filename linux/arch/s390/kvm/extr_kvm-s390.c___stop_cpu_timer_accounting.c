
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cputm_start; int cputm_seqcount; TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int cputm; } ;


 int WARN_ON_ONCE (int) ;
 scalar_t__ get_tod_clock_fast () ;
 int raw_write_seqcount_begin (int *) ;
 int raw_write_seqcount_end (int *) ;

__attribute__((used)) static void __stop_cpu_timer_accounting(struct kvm_vcpu *vcpu)
{
 WARN_ON_ONCE(vcpu->arch.cputm_start == 0);
 raw_write_seqcount_begin(&vcpu->arch.cputm_seqcount);
 vcpu->arch.sie_block->cputm -= get_tod_clock_fast() - vcpu->arch.cputm_start;
 vcpu->arch.cputm_start = 0;
 raw_write_seqcount_end(&vcpu->arch.cputm_seqcount);
}
