
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 scalar_t__ APIC_VECTORS_PER_REG ;
 int MAX_APIC_VECTOR ;
 int REG_POS (int) ;
 scalar_t__ hweight32 (int ) ;

__attribute__((used)) static u8 count_vectors(void *bitmap)
{
 int vec;
 u32 *reg;
 u8 count = 0;

 for (vec = 0; vec < MAX_APIC_VECTOR; vec += APIC_VECTORS_PER_REG) {
  reg = bitmap + REG_POS(vec);
  count += hweight32(*reg);
 }

 return count;
}
