
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int BIT (int ) ;
 scalar_t__ _wakeupgen_get_irq_info (unsigned int,int *,int *) ;
 int wakeupgen_readl (int ,unsigned int) ;
 int wakeupgen_writel (int ,int ,unsigned int) ;

__attribute__((used)) static void _wakeupgen_set(unsigned int irq, unsigned int cpu)
{
 u32 val, bit_number;
 u8 i;

 if (_wakeupgen_get_irq_info(irq, &bit_number, &i))
  return;

 val = wakeupgen_readl(i, cpu);
 val |= BIT(bit_number);
 wakeupgen_writel(val, i, cpu);
}
