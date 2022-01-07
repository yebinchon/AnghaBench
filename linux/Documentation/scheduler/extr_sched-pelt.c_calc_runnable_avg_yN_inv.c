
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HALFLIFE ;
 unsigned long pow (int ,int) ;
 int printf (char*,...) ;
 int y ;

void calc_runnable_avg_yN_inv(void)
{
 int i;
 unsigned int x;


 printf("static const u32 runnable_avg_yN_inv[] __maybe_unused = {");
 for (i = 0; i < HALFLIFE; i++) {
  x = ((1UL<<32)-1)*pow(y, i);

  if (i % 6 == 0) printf("\n\t");
  printf("0x%8x, ", x);
 }
 printf("\n};\n\n");
}
