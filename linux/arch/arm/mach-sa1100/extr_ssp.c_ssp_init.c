
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int ENODEV ;
 int IRQ_Ser4SSP ;
 int MCCR0_MCE ;
 int PPAR ;
 int PPAR_SPR ;
 int SSSR_ROR ;
 int Ser4MCCR0 ;
 int Ser4SSCR0 ;
 int Ser4SSSR ;
 int __PREG (int ) ;
 int release_mem_region (int ,int) ;
 int request_irq (int ,int ,int ,char*,int *) ;
 int request_mem_region (int ,int,char*) ;
 int ssp_interrupt ;

int ssp_init(void)
{
 int ret;

 if (!(PPAR & PPAR_SPR) && (Ser4MCCR0 & MCCR0_MCE))
  return -ENODEV;

 if (!request_mem_region(__PREG(Ser4SSCR0), 0x18, "SSP")) {
  return -EBUSY;
 }

 Ser4SSSR = SSSR_ROR;

 ret = request_irq(IRQ_Ser4SSP, ssp_interrupt, 0, "SSP", ((void*)0));
 if (ret)
  goto out_region;

 return 0;

 out_region:
 release_mem_region(__PREG(Ser4SSCR0), 0x18);
 return ret;
}
