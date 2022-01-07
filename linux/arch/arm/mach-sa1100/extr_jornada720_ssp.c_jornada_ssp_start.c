
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPCR ;
 int GPIO_GPIO25 ;
 int jornada_ssp_flags ;
 int jornada_ssp_lock ;
 int spin_lock_irqsave (int *,int ) ;
 int udelay (int) ;

void jornada_ssp_start(void)
{
 spin_lock_irqsave(&jornada_ssp_lock, jornada_ssp_flags);
 GPCR = GPIO_GPIO25;
 udelay(50);
 return;
}
