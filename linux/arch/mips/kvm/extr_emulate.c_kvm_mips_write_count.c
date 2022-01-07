
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mips_coproc {int dummy; } ;
struct TYPE_2__ {scalar_t__ count_bias; struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int ktime_t ;


 scalar_t__ kvm_mips_count_disabled (struct kvm_vcpu*) ;
 int kvm_mips_count_time (struct kvm_vcpu*) ;
 scalar_t__ kvm_mips_ktime_to_count (struct kvm_vcpu*,int ) ;
 int kvm_mips_resume_hrtimer (struct kvm_vcpu*,int ,scalar_t__) ;
 int kvm_write_c0_guest_count (struct mips_coproc*,scalar_t__) ;

void kvm_mips_write_count(struct kvm_vcpu *vcpu, u32 count)
{
 struct mips_coproc *cop0 = vcpu->arch.cop0;
 ktime_t now;


 now = kvm_mips_count_time(vcpu);
 vcpu->arch.count_bias = count - kvm_mips_ktime_to_count(vcpu, now);

 if (kvm_mips_count_disabled(vcpu))

  kvm_write_c0_guest_count(cop0, count);
 else

  kvm_mips_resume_hrtimer(vcpu, now, count);
}
