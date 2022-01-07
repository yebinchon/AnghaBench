
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HALFLIFE ;
 int n ;
 int printf (char*,...) ;
 int sum ;

void calc_accumulated_sum_32(void)
{
 int i, x = sum;

 printf("static const u32 __accumulated_sum_N32[] = {\n\t     0,");
 for (i = 1; i <= n/HALFLIFE+1; i++) {
  if (i > 1)
   x = x/2 + sum;

  if (i % 6 == 0)
   printf("\n\t");

  printf("%6d,", x);
 }
 printf("\n};\n\n");
}
