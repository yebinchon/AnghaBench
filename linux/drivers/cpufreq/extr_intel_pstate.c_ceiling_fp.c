
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int FRAC_BITS ;
 int fp_toint (int) ;

__attribute__((used)) static inline int ceiling_fp(int32_t x)
{
 int mask, ret;

 ret = fp_toint(x);
 mask = (1 << FRAC_BITS) - 1;
 if (x & mask)
  ret += 1;
 return ret;
}
