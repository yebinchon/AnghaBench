
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ieee754dp {int dummy; } ieee754dp ;
typedef int u64 ;


 scalar_t__ DP_EBIAS ;
 int DP_FBITS ;
 int DP_HIDDEN_BIT ;
 union ieee754dp builddp (int,scalar_t__,int) ;
 int ieee754_clearcx () ;
 union ieee754dp ieee754dp_one (int) ;
 union ieee754dp ieee754dp_ten (int) ;
 union ieee754dp ieee754dp_zero (int ) ;

union ieee754dp ieee754dp_fint(int x)
{
 u64 xm;
 int xe;
 int xs;

 ieee754_clearcx();

 if (x == 0)
  return ieee754dp_zero(0);
 if (x == 1 || x == -1)
  return ieee754dp_one(x < 0);
 if (x == 10 || x == -10)
  return ieee754dp_ten(x < 0);

 xs = (x < 0);
 if (xs) {
  if (x == (1 << 31))
   xm = ((unsigned) 1 << 31);
  else
   xm = -x;
 } else {
  xm = x;
 }


 xe = DP_FBITS;
 while ((xm >> DP_FBITS) == 0) {
  xm <<= 1;
  xe--;
 }
 return builddp(xs, xe + DP_EBIAS, xm & ~DP_HIDDEN_BIT);
}
