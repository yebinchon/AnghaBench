
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CCCR_PPDIS_BIT ;
 int CCSR ;
 unsigned long readl (int ) ;

bool pxa27x_is_ppll_disabled(void)
{
 unsigned long ccsr = readl(CCSR);

 return ccsr & (1 << CCCR_PPDIS_BIT);
}
