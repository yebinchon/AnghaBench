
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int u32 ;
typedef scalar_t__ s8 ;
typedef scalar_t__ int32_t ;


 int div_frac (int,int) ;

__attribute__((used)) static void kvm_get_time_scale(uint64_t scaled_hz, uint64_t base_hz,
          s8 *pshift, u32 *pmultiplier)
{
 uint64_t scaled64;
 int32_t shift = 0;
 uint64_t tps64;
 uint32_t tps32;

 tps64 = base_hz;
 scaled64 = scaled_hz;
 while (tps64 > scaled64*2 || tps64 & 0xffffffff00000000ULL) {
  tps64 >>= 1;
  shift--;
 }

 tps32 = (uint32_t)tps64;
 while (tps32 <= scaled64 || scaled64 & 0xffffffff00000000ULL) {
  if (scaled64 & 0xffffffff00000000ULL || tps32 & 0x80000000)
   scaled64 >>= 1;
  else
   tps32 <<= 1;
  shift++;
 }

 *pshift = shift;
 *pmultiplier = div_frac(scaled64, tps32);
}
