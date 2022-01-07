
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static long alchemy_calc_div(unsigned long rate, unsigned long prate,
          int scale, int maxdiv, unsigned long *rv)
{
 long div1, div2;

 div1 = prate / rate;
 if ((prate / div1) > rate)
  div1++;

 if (scale == 2) {
  if (div1 & 1)
   div1++;
 }

 div2 = (div1 / scale) - 1;

 if (div2 > maxdiv)
  div2 = maxdiv;
 if (rv)
  *rv = div2;

 div1 = ((div2 + 1) * scale);
 return div1;
}
