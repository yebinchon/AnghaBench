
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int APIC_VECTORS_PER_REG ;
 int MAX_APIC_VECTOR ;
 int REG_POS (int) ;
 int __fls (scalar_t__) ;

__attribute__((used)) static int find_highest_vector(void *bitmap)
{
 int vec;
 u32 *reg;

 for (vec = MAX_APIC_VECTOR - APIC_VECTORS_PER_REG;
      vec >= 0; vec -= APIC_VECTORS_PER_REG) {
  reg = bitmap + REG_POS(vec);
  if (*reg)
   return __fls(*reg) + vec;
 }

 return -1;
}
