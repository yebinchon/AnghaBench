
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct mips_coproc {int dummy; } ;
struct TYPE_3__ {int count_ctl; void* count_resume; int count_hz; struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int s64 ;
typedef void* ktime_t ;
struct TYPE_4__ {int (* queue_timer_int ) (struct kvm_vcpu*) ;} ;


 int CAUSEF_DC ;
 int EINVAL ;
 int KVM_REG_MIPS_COUNT_CTL_DC ;
 int NSEC_PER_SEC ;
 int div_u64 (int,int ) ;
 void* ktime_add_ns (void*,int) ;
 scalar_t__ ktime_compare (void*,void*) ;
 void* ktime_get () ;
 TYPE_2__* kvm_mips_callbacks ;
 void* kvm_mips_count_disable (struct kvm_vcpu*) ;
 int kvm_mips_read_count_running (struct kvm_vcpu*,void*) ;
 int kvm_mips_resume_hrtimer (struct kvm_vcpu*,void*,int) ;
 int kvm_read_c0_guest_cause (struct mips_coproc*) ;
 int kvm_read_c0_guest_compare (struct mips_coproc*) ;
 int kvm_read_c0_guest_count (struct mips_coproc*) ;
 int stub1 (struct kvm_vcpu*) ;

int kvm_mips_set_count_ctl(struct kvm_vcpu *vcpu, s64 count_ctl)
{
 struct mips_coproc *cop0 = vcpu->arch.cop0;
 s64 changed = count_ctl ^ vcpu->arch.count_ctl;
 s64 delta;
 ktime_t expire, now;
 u32 count, compare;


 if (changed & ~(s64)(KVM_REG_MIPS_COUNT_CTL_DC))
  return -EINVAL;


 vcpu->arch.count_ctl = count_ctl;


 if (changed & KVM_REG_MIPS_COUNT_CTL_DC) {

  if (kvm_read_c0_guest_cause(cop0) & CAUSEF_DC) {
   if (count_ctl & KVM_REG_MIPS_COUNT_CTL_DC)

    vcpu->arch.count_resume = ktime_get();
  } else if (count_ctl & KVM_REG_MIPS_COUNT_CTL_DC) {

   vcpu->arch.count_resume = kvm_mips_count_disable(vcpu);
  } else {




   count = kvm_read_c0_guest_count(cop0);
   compare = kvm_read_c0_guest_compare(cop0);
   delta = (u64)(u32)(compare - count - 1) + 1;
   delta = div_u64(delta * NSEC_PER_SEC,
     vcpu->arch.count_hz);
   expire = ktime_add_ns(vcpu->arch.count_resume, delta);


   now = ktime_get();
   if (ktime_compare(now, expire) >= 0)

    kvm_mips_callbacks->queue_timer_int(vcpu);


   count = kvm_mips_read_count_running(vcpu, now);
   kvm_mips_resume_hrtimer(vcpu, now, count);
  }
 }

 return 0;
}
