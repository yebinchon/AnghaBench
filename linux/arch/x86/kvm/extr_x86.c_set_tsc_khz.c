
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int tsc_catchup; int tsc_always_catchup; scalar_t__ tsc_scaling_ratio; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ kvm_default_tsc_scaling_ratio ;
 int kvm_has_tsc_control ;
 scalar_t__ kvm_max_tsc_scaling_ratio ;
 unsigned long long kvm_tsc_scaling_ratio_frac_bits ;
 scalar_t__ mul_u64_u32_div (unsigned long long,scalar_t__,scalar_t__) ;
 int pr_warn_ratelimited (char*,...) ;
 scalar_t__ tsc_khz ;

__attribute__((used)) static int set_tsc_khz(struct kvm_vcpu *vcpu, u32 user_tsc_khz, bool scale)
{
 u64 ratio;


 if (!scale) {
  vcpu->arch.tsc_scaling_ratio = kvm_default_tsc_scaling_ratio;
  return 0;
 }


 if (!kvm_has_tsc_control) {
  if (user_tsc_khz > tsc_khz) {
   vcpu->arch.tsc_catchup = 1;
   vcpu->arch.tsc_always_catchup = 1;
   return 0;
  } else {
   pr_warn_ratelimited("user requested TSC rate below hardware speed\n");
   return -1;
  }
 }


 ratio = mul_u64_u32_div(1ULL << kvm_tsc_scaling_ratio_frac_bits,
    user_tsc_khz, tsc_khz);

 if (ratio == 0 || ratio >= kvm_max_tsc_scaling_ratio) {
  pr_warn_ratelimited("Invalid TSC scaling ratio - virtual-tsc-khz=%u\n",
               user_tsc_khz);
  return -1;
 }

 vcpu->arch.tsc_scaling_ratio = ratio;
 return 0;
}
