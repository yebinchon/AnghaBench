
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count_period; int comparecount_timer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef enum hrtimer_restart { ____Placeholder_hrtimer_restart } hrtimer_restart ;


 int HRTIMER_RESTART ;
 int hrtimer_add_expires_ns (int *,int ) ;

enum hrtimer_restart kvm_mips_count_timeout(struct kvm_vcpu *vcpu)
{

 hrtimer_add_expires_ns(&vcpu->arch.comparecount_timer,
          vcpu->arch.count_period);
 return HRTIMER_RESTART;
}
