
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s64 ;
typedef int int64_t ;
typedef int int32_t ;


 int FRAC_BITS ;
 int div64_s64 (int,scalar_t__) ;

__attribute__((used)) static inline int32_t div_fp(s64 x, s64 y)
{
 return div64_s64((int64_t)x << FRAC_BITS, y);
}
