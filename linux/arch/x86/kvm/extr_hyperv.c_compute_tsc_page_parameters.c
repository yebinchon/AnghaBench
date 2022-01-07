
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct pvclock_vcpu_time_info {int flags; int tsc_shift; unsigned long long tsc_to_system_mul; int tsc_timestamp; int system_time; } ;
struct TYPE_3__ {int tsc_scale; int tsc_offset; } ;
typedef TYPE_1__ HV_REFERENCE_TSC_PAGE ;


 int PVCLOCK_TSC_STABLE_BIT ;
 int do_div (int ,int) ;
 int mul_u64_u32_div (unsigned long long,unsigned long long,int) ;
 scalar_t__ mul_u64_u64_shr (int ,int ,int) ;

__attribute__((used)) static bool compute_tsc_page_parameters(struct pvclock_vcpu_time_info *hv_clock,
     HV_REFERENCE_TSC_PAGE *tsc_ref)
{
 u64 max_mul;

 if (!(hv_clock->flags & PVCLOCK_TSC_STABLE_BIT))
  return 0;







 max_mul = 100ull << (32 - hv_clock->tsc_shift);
 if (hv_clock->tsc_to_system_mul >= max_mul)
  return 0;





 tsc_ref->tsc_scale =
  mul_u64_u32_div(1ULL << (32 + hv_clock->tsc_shift),
    hv_clock->tsc_to_system_mul,
    100);

 tsc_ref->tsc_offset = hv_clock->system_time;
 do_div(tsc_ref->tsc_offset, 100);
 tsc_ref->tsc_offset -=
  mul_u64_u64_shr(hv_clock->tsc_timestamp, tsc_ref->tsc_scale, 64);
 return 1;
}
