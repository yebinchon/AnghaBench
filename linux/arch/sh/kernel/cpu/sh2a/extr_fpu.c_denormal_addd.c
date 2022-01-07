
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long denormal_addd1 (unsigned long long,unsigned long long) ;
 unsigned long long denormal_subd1 (unsigned long long,unsigned long long) ;

__attribute__((used)) static long long denormal_addd(long long hx, long long hy)
{
 unsigned long long ix, iy;
 long long sign;

 if ((hx ^ hy) & 0x8000000000000000LL) {
  sign = hx & 0x8000000000000000LL;
  ix = hx & 0x7fffffffffffffffLL;
  iy = hy & 0x7fffffffffffffffLL;
  if (iy < 0x0010000000000000LL) {
   ix = denormal_subd1(ix, iy);
   if ((int) ix < 0) {
    ix = -ix;
    sign ^= 0x8000000000000000LL;
   }
  } else {
   ix = denormal_subd1(iy, ix);
   sign ^= 0x8000000000000000LL;
  }
 } else {
  sign = hx & 0x8000000000000000LL;
  ix = hx & 0x7fffffffffffffffLL;
  iy = hy & 0x7fffffffffffffffLL;
  if (iy < 0x0010000000000000LL)
   ix = denormal_addd1(ix, iy);
  else
   ix = denormal_addd1(iy, ix);
 }

 return sign | ix;
}
