
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cputm_seqcount; TYPE_1__* sie_block; int cputm_start; scalar_t__ cputm_enabled; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
typedef int __u64 ;
struct TYPE_3__ {int cputm; } ;


 int get_tod_clock_fast () ;
 int preempt_disable () ;
 int preempt_enable () ;
 int raw_write_seqcount_begin (int *) ;
 int raw_write_seqcount_end (int *) ;

void kvm_s390_set_cpu_timer(struct kvm_vcpu *vcpu, __u64 cputm)
{
 preempt_disable();
 raw_write_seqcount_begin(&vcpu->arch.cputm_seqcount);
 if (vcpu->arch.cputm_enabled)
  vcpu->arch.cputm_start = get_tod_clock_fast();
 vcpu->arch.sie_block->cputm = cputm;
 raw_write_seqcount_end(&vcpu->arch.cputm_seqcount);
 preempt_enable();
}
