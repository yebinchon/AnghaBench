
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_PER_LONG ;
 int TIMER_IRQ ;
 int fls_long (unsigned long) ;

__attribute__((used)) static inline int eirr_to_irq(unsigned long eirr)
{
 int bit = fls_long(eirr);
 return (BITS_PER_LONG - bit) + TIMER_IRQ;
}
