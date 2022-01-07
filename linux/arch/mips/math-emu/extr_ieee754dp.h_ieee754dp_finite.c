
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ieee754dp {int dummy; } ieee754dp ;


 scalar_t__ DPBEXP (union ieee754dp) ;
 scalar_t__ DP_EBIAS ;
 scalar_t__ DP_EMAX ;

__attribute__((used)) static inline int ieee754dp_finite(union ieee754dp x)
{
 return DPBEXP(x) != DP_EMAX + 1 + DP_EBIAS;
}
