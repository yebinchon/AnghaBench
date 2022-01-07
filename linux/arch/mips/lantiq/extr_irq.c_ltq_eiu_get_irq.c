
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exin_avail ;
 int* ltq_eiu_irq ;

int ltq_eiu_get_irq(int exin)
{
 if (exin < exin_avail)
  return ltq_eiu_irq[exin];
 return -1;
}
