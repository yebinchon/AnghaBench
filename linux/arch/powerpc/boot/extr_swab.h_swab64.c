
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static inline u64 swab64(u64 x)
{
 return (u64)((x & (u64)0x00000000000000ffULL) << 56) |
  (u64)((x & (u64)0x000000000000ff00ULL) << 40) |
  (u64)((x & (u64)0x0000000000ff0000ULL) << 24) |
  (u64)((x & (u64)0x00000000ff000000ULL) << 8) |
  (u64)((x & (u64)0x000000ff00000000ULL) >> 8) |
  (u64)((x & (u64)0x0000ff0000000000ULL) >> 24) |
  (u64)((x & (u64)0x00ff000000000000ULL) >> 40) |
  (u64)((x & (u64)0xff00000000000000ULL) >> 56);
}
