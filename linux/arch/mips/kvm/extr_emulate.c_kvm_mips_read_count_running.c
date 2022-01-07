
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mips_coproc {int dummy; } ;
struct TYPE_3__ {int count_period; int comparecount_timer; scalar_t__ count_bias; struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef scalar_t__ s32 ;
typedef int ktime_t ;
struct TYPE_4__ {int (* queue_timer_int ) (struct kvm_vcpu*) ;} ;


 int HRTIMER_MODE_ABS ;
 int hrtimer_cancel (int *) ;
 int hrtimer_get_expires (int *) ;
 int hrtimer_start (int *,int ,int ) ;
 int ktime_add_ns (int ,int) ;
 scalar_t__ ktime_before (int ,int ) ;
 TYPE_2__* kvm_mips_callbacks ;
 scalar_t__ kvm_mips_ktime_to_count (struct kvm_vcpu*,int ) ;
 scalar_t__ kvm_read_c0_guest_compare (struct mips_coproc*) ;
 int stub1 (struct kvm_vcpu*) ;

__attribute__((used)) static u32 kvm_mips_read_count_running(struct kvm_vcpu *vcpu, ktime_t now)
{
 struct mips_coproc *cop0 = vcpu->arch.cop0;
 ktime_t expires, threshold;
 u32 count, compare;
 int running;


 count = vcpu->arch.count_bias + kvm_mips_ktime_to_count(vcpu, now);
 compare = kvm_read_c0_guest_compare(cop0);





 if ((s32)(count - compare) < 0)
  return count;







 expires = hrtimer_get_expires(&vcpu->arch.comparecount_timer);
 threshold = ktime_add_ns(now, vcpu->arch.count_period / 4);
 if (ktime_before(expires, threshold)) {




  running = hrtimer_cancel(&vcpu->arch.comparecount_timer);


  kvm_mips_callbacks->queue_timer_int(vcpu);





  if (running) {
   expires = ktime_add_ns(expires,
            vcpu->arch.count_period);
   hrtimer_start(&vcpu->arch.comparecount_timer, expires,
          HRTIMER_MODE_ABS);
  }
 }

 return count;
}
