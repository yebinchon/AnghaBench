
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mips_coproc {int dummy; } ;
struct TYPE_3__ {struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef scalar_t__ s32 ;
typedef int ktime_t ;
struct TYPE_4__ {int (* dequeue_timer_int ) (struct kvm_vcpu*) ;} ;


 scalar_t__ CAUSEF_TI ;
 int CONFIG_KVM_MIPS_VZ ;
 scalar_t__ IS_ENABLED (int ) ;
 int back_to_back_c0_hazard () ;
 int ktime_set (int ,int ) ;
 TYPE_2__* kvm_mips_callbacks ;
 int kvm_mips_count_disabled (struct kvm_vcpu*) ;
 int kvm_mips_freeze_hrtimer (struct kvm_vcpu*,scalar_t__*) ;
 int kvm_mips_resume_hrtimer (struct kvm_vcpu*,int ,scalar_t__) ;
 scalar_t__ kvm_read_c0_guest_cause (struct mips_coproc*) ;
 scalar_t__ kvm_read_c0_guest_compare (struct mips_coproc*) ;
 int kvm_write_c0_guest_cause (struct mips_coproc*,scalar_t__) ;
 int kvm_write_c0_guest_compare (struct mips_coproc*,scalar_t__) ;
 int preempt_disable () ;
 int preempt_enable () ;
 scalar_t__ read_c0_count () ;
 int stub1 (struct kvm_vcpu*) ;
 int stub2 (struct kvm_vcpu*) ;
 int write_c0_gtoffset (scalar_t__) ;

void kvm_mips_write_compare(struct kvm_vcpu *vcpu, u32 compare, bool ack)
{
 struct mips_coproc *cop0 = vcpu->arch.cop0;
 int dc;
 u32 old_compare = kvm_read_c0_guest_compare(cop0);
 s32 delta = compare - old_compare;
 u32 cause;
 ktime_t now = ktime_set(0, 0);
 u32 count;


 if (old_compare == compare) {
  if (!ack)
   return;
  kvm_mips_callbacks->dequeue_timer_int(vcpu);
  kvm_write_c0_guest_compare(cop0, compare);
  return;
 }
 if (IS_ENABLED(CONFIG_KVM_MIPS_VZ) && delta > 0) {
  preempt_disable();
  write_c0_gtoffset(compare - read_c0_count());
  back_to_back_c0_hazard();
 }


 dc = kvm_mips_count_disabled(vcpu);
 if (!dc)
  now = kvm_mips_freeze_hrtimer(vcpu, &count);

 if (ack)
  kvm_mips_callbacks->dequeue_timer_int(vcpu);
 else if (IS_ENABLED(CONFIG_KVM_MIPS_VZ))




  cause = kvm_read_c0_guest_cause(cop0);

 kvm_write_c0_guest_compare(cop0, compare);

 if (IS_ENABLED(CONFIG_KVM_MIPS_VZ)) {
  if (delta > 0)
   preempt_enable();

  back_to_back_c0_hazard();

  if (!ack && cause & CAUSEF_TI)
   kvm_write_c0_guest_cause(cop0, cause);
 }


 if (!dc)
  kvm_mips_resume_hrtimer(vcpu, now, count);






 if (IS_ENABLED(CONFIG_KVM_MIPS_VZ) && delta <= 0)
  write_c0_gtoffset(compare - read_c0_count());
}
