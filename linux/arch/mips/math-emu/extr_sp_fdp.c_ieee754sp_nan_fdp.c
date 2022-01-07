
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ieee754sp {int dummy; } ieee754sp ;
typedef int u64 ;


 int DP_FBITS ;
 scalar_t__ SP_EBIAS ;
 scalar_t__ SP_EMAX ;
 int SP_FBITS ;
 union ieee754sp buildsp (int,scalar_t__,int) ;

__attribute__((used)) static inline union ieee754sp ieee754sp_nan_fdp(int xs, u64 xm)
{
 return buildsp(xs, SP_EMAX + 1 + SP_EBIAS,
         xm >> (DP_FBITS - SP_FBITS));
}
