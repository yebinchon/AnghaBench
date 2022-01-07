
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ cprgr (char*) ;

__attribute__((used)) static uint64_t csky_pmu_read_l2ac(void)
{
 uint32_t lo, hi, tmp;
 uint64_t result;

 do {
  tmp = cprgr("<0, 0xf>");
  lo = cprgr("<0, 0xe>");
  hi = cprgr("<0, 0xf>");
 } while (hi != tmp);

 result = (uint64_t) (hi) << 32;
 result |= lo;

 return result;
}
