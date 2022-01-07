
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int comparecount_timer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int ktime_t ;


 int hrtimer_cancel (int *) ;
 int ktime_get () ;
 int kvm_mips_read_count_running (struct kvm_vcpu*,int ) ;

ktime_t kvm_mips_freeze_hrtimer(struct kvm_vcpu *vcpu, u32 *count)
{
 ktime_t now;


 hrtimer_cancel(&vcpu->arch.comparecount_timer);
 now = ktime_get();


 *count = kvm_mips_read_count_running(vcpu, now);

 return now;
}
