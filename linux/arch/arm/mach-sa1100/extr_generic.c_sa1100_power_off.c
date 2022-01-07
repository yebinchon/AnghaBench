
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFER ;
 int GRER ;
 int PCFR ;
 int PCFR_FP ;
 int PCFR_FS ;
 int PCFR_OPDE ;
 int PMCR ;
 int PMCR_SF ;
 scalar_t__ PSPR ;
 int PWER ;
 int local_irq_disable () ;
 int mdelay (int) ;

__attribute__((used)) static void sa1100_power_off(void)
{
 mdelay(100);
 local_irq_disable();

 PCFR = (PCFR_OPDE | PCFR_FP | PCFR_FS);

 PWER = GFER = GRER = 1;




 PSPR = 0;

 PMCR = PMCR_SF;
}
