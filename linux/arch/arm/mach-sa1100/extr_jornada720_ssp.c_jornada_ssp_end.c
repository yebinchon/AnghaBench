
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_GPIO25 ;
 int GPSR ;
 int jornada_ssp_flags ;
 int jornada_ssp_lock ;
 int spin_unlock_irqrestore (int *,int ) ;

void jornada_ssp_end(void)
{
 GPSR = GPIO_GPIO25;
 spin_unlock_irqrestore(&jornada_ssp_lock, jornada_ssp_flags);
 return;
}
