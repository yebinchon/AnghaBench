
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int limb ;
typedef int int32_t ;



__attribute__((used)) static inline limb
div_by_2_26(const limb v)
{

  const uint32_t highword = (uint32_t) (((uint64_t) v) >> 32);

  const int32_t sign = ((int32_t) highword) >> 31;

  const int32_t roundoff = ((uint32_t) sign) >> 6;

  return (v + roundoff) >> 26;
}
