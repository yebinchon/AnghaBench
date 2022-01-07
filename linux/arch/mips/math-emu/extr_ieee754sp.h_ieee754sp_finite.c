
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ieee754sp {int dummy; } ieee754sp ;


 scalar_t__ SPBEXP (union ieee754sp) ;
 scalar_t__ SP_EBIAS ;
 scalar_t__ SP_EMAX ;

__attribute__((used)) static inline int ieee754sp_finite(union ieee754sp x)
{
 return SPBEXP(x) != SP_EMAX + 1 + SP_EBIAS;
}
