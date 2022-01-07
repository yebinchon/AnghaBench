
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtoa_context {int dummy; } ;


 char* jvp_dtoa (struct dtoa_context*,double,int ,int ,int*,int*,char**) ;
 int jvp_freedtoa (struct dtoa_context*,char*) ;

char *
 jvp_dtoa_fmt(struct dtoa_context* C, register char *b, double x)
{
 register int i, k;
 register char *s;
 int decpt, j, sign;
 char *b0, *s0, *se;

 b0 = b;







 s = s0 = jvp_dtoa(C, x, 0, 0, &decpt, &sign, &se);
 if (sign)
  *b++ = '-';
 if (decpt == 9999) {
  while((*b++ = *s++));
  goto done0;
  }
 if (decpt <= -4 || decpt > se - s + 15) {
  *b++ = *s++;
  if (*s) {
   *b++ = '.';
   while((*b = *s++))
    b++;
   }
  *b++ = 'e';

  if (--decpt < 0) {
   *b++ = '-';
   decpt = -decpt;
   }
  else
   *b++ = '+';
  for(j = 2, k = 10; 10*k <= decpt; j++, k *= 10);
  for(;;) {
   i = decpt / k;
   *b++ = i + '0';
   if (--j <= 0)
    break;
   decpt -= i*k;
   decpt *= 10;
   }
  *b = 0;
  }
 else if (decpt <= 0) {
  *b++ = '0';
  *b++ = '.';
  for(; decpt < 0; decpt++)
   *b++ = '0';
  while((*b++ = *s++));
  }
 else {
  while((*b = *s++)) {
   b++;
   if (--decpt == 0 && *s)
    *b++ = '.';
   }
  for(; decpt > 0; decpt--)
   *b++ = '0';
  *b = 0;
  }
 done0:
 jvp_freedtoa(C, s0);
        goto done;
 done:
 return b0;
 }
