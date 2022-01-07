
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int count_bias; int count_hz; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int ktime_t ;


 int NSEC_PER_SEC ;
 int div_u64 (int,int ) ;
 int ktime_get () ;
 int ktime_sub_ns (int ,int) ;
 int kvm_mips_ktime_to_count (struct kvm_vcpu*,int ) ;
 int kvm_mips_resume_hrtimer (struct kvm_vcpu*,int ,int) ;

int kvm_mips_restore_hrtimer(struct kvm_vcpu *vcpu, ktime_t before,
        u32 count, int min_drift)
{
 ktime_t now, count_time;
 u32 now_count, before_count;
 u64 delta;
 int drift, ret = 0;


 before_count = vcpu->arch.count_bias +
   kvm_mips_ktime_to_count(vcpu, before);
 drift = count - before_count;
 if (drift < min_drift) {
  count_time = before;
  vcpu->arch.count_bias += drift;
  ret = drift;
  goto resume;
 }


 now = ktime_get();
 now_count = vcpu->arch.count_bias + kvm_mips_ktime_to_count(vcpu, now);





 drift = count - now_count;
 if (drift > 0) {
  count_time = now;
  vcpu->arch.count_bias += drift;
  ret = drift;
  goto resume;
 }


 delta = (u64)(u32)(now_count - count);
 delta = div_u64(delta * NSEC_PER_SEC, vcpu->arch.count_hz);
 count_time = ktime_sub_ns(now, delta);

resume:

 kvm_mips_resume_hrtimer(vcpu, count_time, count);
 return ret;
}
