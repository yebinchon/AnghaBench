
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static inline u64 __div_u64_rem(u64 dividend, u32 divisor, u32 *remainder)
{
 union {
  u64 v64;
  u32 v32[2];
 } d = { dividend };
 u32 upper;

 upper = d.v32[1];
 d.v32[1] = 0;
 if (upper >= divisor) {
  d.v32[1] = upper / divisor;
  upper %= divisor;
 }
 asm ("divl %2" : "=a" (d.v32[0]), "=d" (*remainder) :
  "rm" (divisor), "0" (d.v32[0]), "1" (upper));
 return d.v64;
}
