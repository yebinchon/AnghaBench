
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int* dmte_irq_map ;

__attribute__((used)) static inline unsigned int get_dmte_irq(unsigned int chan)
{
 return dmte_irq_map[chan];
}
