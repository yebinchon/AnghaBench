
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long* pmcsel_mask ;
 unsigned long* pmcsel_shift ;

__attribute__((used)) static void mpc7450_disable_pmc(unsigned int pmc, unsigned long mmcr[])
{
 if (pmc <= 1)
  mmcr[0] &= ~(pmcsel_mask[pmc] << pmcsel_shift[pmc]);
 else
  mmcr[1] &= ~(pmcsel_mask[pmc] << pmcsel_shift[pmc]);
}
