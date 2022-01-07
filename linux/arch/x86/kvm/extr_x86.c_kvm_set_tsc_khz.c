
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ virtual_tsc_khz; int virtual_tsc_mult; int virtual_tsc_shift; int tsc_scaling_ratio; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int NSEC_PER_SEC ;
 scalar_t__ adjust_tsc_khz (int ,int ) ;
 int kvm_default_tsc_scaling_ratio ;
 int kvm_get_time_scale (scalar_t__,int ,int *,int *) ;
 int pr_debug (char*,scalar_t__,scalar_t__,scalar_t__) ;
 int set_tsc_khz (struct kvm_vcpu*,scalar_t__,int) ;
 int tsc_khz ;
 int tsc_tolerance_ppm ;

__attribute__((used)) static int kvm_set_tsc_khz(struct kvm_vcpu *vcpu, u32 user_tsc_khz)
{
 u32 thresh_lo, thresh_hi;
 int use_scaling = 0;


 if (user_tsc_khz == 0) {

  vcpu->arch.tsc_scaling_ratio = kvm_default_tsc_scaling_ratio;
  return -1;
 }


 kvm_get_time_scale(user_tsc_khz * 1000LL, NSEC_PER_SEC,
      &vcpu->arch.virtual_tsc_shift,
      &vcpu->arch.virtual_tsc_mult);
 vcpu->arch.virtual_tsc_khz = user_tsc_khz;







 thresh_lo = adjust_tsc_khz(tsc_khz, -tsc_tolerance_ppm);
 thresh_hi = adjust_tsc_khz(tsc_khz, tsc_tolerance_ppm);
 if (user_tsc_khz < thresh_lo || user_tsc_khz > thresh_hi) {
  pr_debug("kvm: requested TSC rate %u falls outside tolerance [%u,%u]\n", user_tsc_khz, thresh_lo, thresh_hi);
  use_scaling = 1;
 }
 return set_tsc_khz(vcpu, user_tsc_khz, use_scaling);
}
