
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline u16 swab16(u16 x)
{
 return ((x & (u16)0x00ffU) << 8) |
  ((x & (u16)0xff00U) >> 8);
}
