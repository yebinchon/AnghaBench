
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT (int) ;

__attribute__((used)) static bool lvt_interrupt_supported(unsigned int bank, u32 msr_high_bits)
{



 if (bank == 4)
  return 1;





 return msr_high_bits & BIT(28);
}
