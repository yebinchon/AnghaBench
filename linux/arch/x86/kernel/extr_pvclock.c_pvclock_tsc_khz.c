
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct pvclock_vcpu_time_info {unsigned long tsc_shift; int tsc_to_system_mul; } ;


 int do_div (unsigned long,int ) ;

unsigned long pvclock_tsc_khz(struct pvclock_vcpu_time_info *src)
{
 u64 pv_tsc_khz = 1000000ULL << 32;

 do_div(pv_tsc_khz, src->tsc_to_system_mul);
 if (src->tsc_shift < 0)
  pv_tsc_khz <<= -src->tsc_shift;
 else
  pv_tsc_khz >>= src->tsc_shift;
 return pv_tsc_khz;
}
