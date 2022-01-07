
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HALFLIFE ;
 long SHIFT ;
 long max ;
 int n ;
 int printf (char*,long) ;
 unsigned long y ;

void calc_converged_max(void)
{
 long last = 0, y_inv = ((1UL<<32)-1)*y;

 for (; ; n++) {
  if (n > -1)
   max = ((max*y_inv)>>SHIFT) + 1024;





  if (last == max)
   break;

  last = max;
 }
 n--;
 printf("#define LOAD_AVG_PERIOD %d\n", HALFLIFE);
 printf("#define LOAD_AVG_MAX %ld\n", max);

}
