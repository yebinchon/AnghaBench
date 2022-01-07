
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_s390_vm_tod_clock {scalar_t__ tod; scalar_t__ epoch_idx; } ;
struct kvm_s390_tod_clock_ext {scalar_t__ tod; scalar_t__ epoch_idx; } ;
struct TYPE_2__ {scalar_t__ epoch; scalar_t__ epdx; } ;
struct kvm {TYPE_1__ arch; } ;


 int get_tod_clock_ext (char*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 scalar_t__ test_kvm_facility (struct kvm*,int) ;

__attribute__((used)) static void kvm_s390_get_tod_clock(struct kvm *kvm,
       struct kvm_s390_vm_tod_clock *gtod)
{
 struct kvm_s390_tod_clock_ext htod;

 preempt_disable();

 get_tod_clock_ext((char *)&htod);

 gtod->tod = htod.tod + kvm->arch.epoch;
 gtod->epoch_idx = 0;
 if (test_kvm_facility(kvm, 139)) {
  gtod->epoch_idx = htod.epoch_idx + kvm->arch.epdx;
  if (gtod->tod < htod.tod)
   gtod->epoch_idx += 1;
 }

 preempt_enable();
}
