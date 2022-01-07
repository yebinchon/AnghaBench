
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct mips_coproc {int dummy; } ;
struct TYPE_2__ {int comparecount_timer; int count_hz; struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int ktime_t ;


 int HRTIMER_MODE_ABS ;
 int NSEC_PER_SEC ;
 int div_u64 (int,int ) ;
 int hrtimer_cancel (int *) ;
 int hrtimer_start (int *,int ,int ) ;
 int ktime_add_ns (int ,int) ;
 int kvm_read_c0_guest_compare (struct mips_coproc*) ;

__attribute__((used)) static void kvm_mips_resume_hrtimer(struct kvm_vcpu *vcpu,
        ktime_t now, u32 count)
{
 struct mips_coproc *cop0 = vcpu->arch.cop0;
 u32 compare;
 u64 delta;
 ktime_t expire;


 compare = kvm_read_c0_guest_compare(cop0);
 delta = (u64)(u32)(compare - count - 1) + 1;
 delta = div_u64(delta * NSEC_PER_SEC, vcpu->arch.count_hz);
 expire = ktime_add_ns(now, delta);


 hrtimer_cancel(&vcpu->arch.comparecount_timer);
 hrtimer_start(&vcpu->arch.comparecount_timer, expire, HRTIMER_MODE_ABS);
}
