
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int comparecount_timer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ hrtimer_cancel (int *) ;
 int hrtimer_restart (int *) ;

__attribute__((used)) static void kvm_mips_migrate_count(struct kvm_vcpu *vcpu)
{
 if (hrtimer_cancel(&vcpu->arch.comparecount_timer))
  hrtimer_restart(&vcpu->arch.comparecount_timer);
}
