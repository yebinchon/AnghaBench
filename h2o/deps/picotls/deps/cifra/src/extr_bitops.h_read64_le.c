
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;


 int read32_le (int const*) ;

__attribute__((used)) static inline uint64_t read64_le(const uint8_t buf[8])
{
  uint32_t hi = read32_le(buf + 4),
           lo = read32_le(buf);
  return ((uint64_t)hi) << 32 |
         lo;
}
