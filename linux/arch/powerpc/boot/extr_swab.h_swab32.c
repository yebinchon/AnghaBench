
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 swab32(u32 x)
{
 return ((x & (u32)0x000000ffUL) << 24) |
  ((x & (u32)0x0000ff00UL) << 8) |
  ((x & (u32)0x00ff0000UL) >> 8) |
  ((x & (u32)0xff000000UL) >> 24);
}
