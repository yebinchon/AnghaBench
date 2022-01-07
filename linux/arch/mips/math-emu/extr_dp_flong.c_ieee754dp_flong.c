
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ieee754dp {int dummy; } ieee754dp ;
typedef int u64 ;
typedef int s64 ;


 int DP_FBITS ;
 int XDPSRSX1 () ;
 int ieee754_clearcx () ;
 union ieee754dp ieee754dp_format (int,int,int) ;
 union ieee754dp ieee754dp_one (int) ;
 union ieee754dp ieee754dp_ten (int) ;
 union ieee754dp ieee754dp_zero (int ) ;

union ieee754dp ieee754dp_flong(s64 x)
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
  if (x == (1ULL << 63))
   xm = (1ULL << 63);
  else
   xm = -x;
 } else {
  xm = x;
 }


 xe = DP_FBITS + 3;
 if (xm >> (DP_FBITS + 1 + 3)) {

  while (xm >> (DP_FBITS + 1 + 3)) {
   XDPSRSX1();
  }
 } else {

  while ((xm >> (DP_FBITS + 3)) == 0) {
   xm <<= 1;
   xe--;
  }
 }

 return ieee754dp_format(xs, xe, xm);
}
