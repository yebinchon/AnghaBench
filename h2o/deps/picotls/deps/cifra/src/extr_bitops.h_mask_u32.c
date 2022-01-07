
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;



__attribute__((used)) static inline uint32_t mask_u32(uint32_t x, uint32_t y)
{
  uint32_t diff = x ^ y;
  uint32_t diff_is_zero = ~diff & (diff - 1);
  return (uint32_t)(-(int32_t)(diff_is_zero >> 31));
}
