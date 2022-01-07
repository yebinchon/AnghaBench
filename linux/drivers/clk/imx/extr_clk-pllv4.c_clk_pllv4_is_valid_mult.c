
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (unsigned int*) ;
 unsigned int* pllv4_mult_table ;

__attribute__((used)) static bool clk_pllv4_is_valid_mult(unsigned int mult)
{
 int i;


 for (i = 0; i < ARRAY_SIZE(pllv4_mult_table); i++) {
  if (pllv4_mult_table[i] == mult)
   return 1;
 }

 return 0;
}
