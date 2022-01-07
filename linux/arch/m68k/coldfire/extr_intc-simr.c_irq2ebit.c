
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int EINT0 ;

__attribute__((used)) static inline unsigned int irq2ebit(unsigned int irq)
{
 return irq - EINT0;
}
