
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HALFLIFE ;
 int printf (char*,...) ;
 int sum ;
 int y ;

void calc_runnable_avg_yN_sum(void)
{
 int i;

 printf("static const u32 runnable_avg_yN_sum[] = {\n\t    0,");
 for (i = 1; i <= HALFLIFE; i++) {
  if (i == 1)
   sum *= y;
  else
   sum = sum*y + 1024*y;

  if (i % 11 == 0)
   printf("\n\t");

  printf("%5d,", sum);
 }
 printf("\n};\n\n");
}
