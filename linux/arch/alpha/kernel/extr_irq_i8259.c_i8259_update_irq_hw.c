
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (unsigned long,int) ;

__attribute__((used)) static inline void
i8259_update_irq_hw(unsigned int irq, unsigned long mask)
{
 int port = 0x21;
 if (irq & 8) mask >>= 8;
 if (irq & 8) port = 0xA1;
 outb(mask, port);
}
