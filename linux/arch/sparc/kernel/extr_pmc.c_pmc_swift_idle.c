
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUXIO_LED ;
 int PMC_IDLE_ON ;
 int PMC_IDLE_REG ;
 int pmc_readb (int ) ;
 int pmc_writeb (int,int ) ;
 int set_auxio (int,int) ;

__attribute__((used)) static void pmc_swift_idle(void)
{




 pmc_writeb(pmc_readb(PMC_IDLE_REG) | PMC_IDLE_ON, PMC_IDLE_REG);




}
