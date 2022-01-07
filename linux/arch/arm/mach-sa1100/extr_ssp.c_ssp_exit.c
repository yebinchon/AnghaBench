
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_Ser4SSP ;
 int SSCR0_SSE ;
 int Ser4SSCR0 ;
 int __PREG (int ) ;
 int free_irq (int ,int *) ;
 int release_mem_region (int ,int) ;

void ssp_exit(void)
{
 Ser4SSCR0 &= ~SSCR0_SSE;

 free_irq(IRQ_Ser4SSP, ((void*)0));
 release_mem_region(__PREG(Ser4SSCR0), 0x18);
}
