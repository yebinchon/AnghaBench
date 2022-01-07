
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MARVEL_IRQ_VEC_IRQ_MASK ;
 unsigned int MARVEL_IRQ_VEC_PE_SHIFT ;
 int handle_irq (unsigned int) ;

__attribute__((used)) static void
io7_device_interrupt(unsigned long vector)
{
 unsigned int pid;
 unsigned int irq;
 pid = vector >> 16;
 irq = ((vector & 0xffff) - 0x800) >> 4;

 irq += 16;
 irq &= MARVEL_IRQ_VEC_IRQ_MASK;
 irq |= pid << MARVEL_IRQ_VEC_PE_SHIFT;

 handle_irq(irq);
}
