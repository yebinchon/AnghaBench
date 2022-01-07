
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 unsigned int ARRAY_SIZE (int*) ;
 int* axi_clkgen_lock_table ;

__attribute__((used)) static uint32_t axi_clkgen_lookup_lock(unsigned int m)
{
 if (m < ARRAY_SIZE(axi_clkgen_lock_table))
  return axi_clkgen_lock_table[m];
 return 0x1f1f00fa;
}
