
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static inline void add128(u64 *resh, u64 *resl, u64 nh, u64 nl, u64 mh, u64 ml)
{
 asm( "adds	%Q0, %Q2, %Q4\n\t"
  "adcs	%R0, %R2, %R4\n\t"
  "adcs	%Q1, %Q3, %Q5\n\t"
  "adc	%R1, %R3, %R5"
     : "=r" (nl), "=r" (nh)
     : "0" (nl), "1" (nh), "r" (ml), "r" (mh)
     : "cc");
 *resh = nh;
 *resl = nl;
}
