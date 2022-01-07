
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MMCR1_PMCSEL_SHIFT (unsigned int) ;

void isa207_disable_pmc(unsigned int pmc, unsigned long mmcr[])
{
 if (pmc <= 3)
  mmcr[1] &= ~(0xffUL << MMCR1_PMCSEL_SHIFT(pmc + 1));
}
