
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__* ramc; } ;
struct TYPE_4__ {TYPE_1__ data; } ;


 int AT91_SDRAMC_LPCB ;
 int AT91_SDRAMC_LPCB_SELF_REFRESH ;
 int AT91_SDRAMC_LPR ;
 int at91_ramc_read (int,int ) ;
 int at91_ramc_write (int,int ,int) ;
 int cpu_do_idle () ;
 TYPE_2__ soc_pm ;

__attribute__((used)) static void at91sam9_sdram_standby(void)
{
 u32 lpr0, lpr1 = 0;
 u32 saved_lpr0, saved_lpr1 = 0;

 if (soc_pm.data.ramc[1]) {
  saved_lpr1 = at91_ramc_read(1, AT91_SDRAMC_LPR);
  lpr1 = saved_lpr1 & ~AT91_SDRAMC_LPCB;
  lpr1 |= AT91_SDRAMC_LPCB_SELF_REFRESH;
 }

 saved_lpr0 = at91_ramc_read(0, AT91_SDRAMC_LPR);
 lpr0 = saved_lpr0 & ~AT91_SDRAMC_LPCB;
 lpr0 |= AT91_SDRAMC_LPCB_SELF_REFRESH;


 at91_ramc_write(0, AT91_SDRAMC_LPR, lpr0);
 if (soc_pm.data.ramc[1])
  at91_ramc_write(1, AT91_SDRAMC_LPR, lpr1);

 cpu_do_idle();

 at91_ramc_write(0, AT91_SDRAMC_LPR, saved_lpr0);
 if (soc_pm.data.ramc[1])
  at91_ramc_write(1, AT91_SDRAMC_LPR, saved_lpr1);
}
