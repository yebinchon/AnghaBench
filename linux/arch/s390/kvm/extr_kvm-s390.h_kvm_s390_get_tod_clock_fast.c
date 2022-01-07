
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ epoch; } ;
struct kvm {TYPE_1__ arch; } ;


 scalar_t__ get_tod_clock_fast () ;
 int preempt_disable () ;
 int preempt_enable () ;

__attribute__((used)) static inline u64 kvm_s390_get_tod_clock_fast(struct kvm *kvm)
{
 u64 rc;

 preempt_disable();
 rc = get_tod_clock_fast() + kvm->arch.epoch;
 preempt_enable();
 return rc;
}
