
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outl (unsigned long,int) ;

__attribute__((used)) static inline void
takara_update_irq_hw(unsigned long irq, unsigned long mask)
{
 int regaddr;

 mask = (irq >= 64 ? mask << 16 : mask >> ((irq - 16) & 0x30));
 regaddr = 0x510 + (((irq - 16) >> 2) & 0x0c);
 outl(mask & 0xffff0000UL, regaddr);
}
