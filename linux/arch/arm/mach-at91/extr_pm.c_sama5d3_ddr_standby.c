
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AT91_DDRSDRC_LPCB ;
 int AT91_DDRSDRC_LPCB_POWER_DOWN ;
 int AT91_DDRSDRC_LPR ;
 int at91_ramc_read (int ,int ) ;
 int at91_ramc_write (int ,int ,int) ;
 int cpu_do_idle () ;

__attribute__((used)) static void sama5d3_ddr_standby(void)
{
 u32 lpr0;
 u32 saved_lpr0;

 saved_lpr0 = at91_ramc_read(0, AT91_DDRSDRC_LPR);
 lpr0 = saved_lpr0 & ~AT91_DDRSDRC_LPCB;
 lpr0 |= AT91_DDRSDRC_LPCB_POWER_DOWN;

 at91_ramc_write(0, AT91_DDRSDRC_LPR, lpr0);

 cpu_do_idle();

 at91_ramc_write(0, AT91_DDRSDRC_LPR, saved_lpr0);
}
