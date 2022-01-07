
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MCF_CCM_MISCCR ;
 int MCF_CCM_MISCCR_LIMP ;
 int MCF_CCM_MISCCR_PLL_LOCK ;
 int get_sys_clock () ;
 int readw (int ) ;
 int writew (int,int ) ;

int clock_exit_limp(void)
{
 int fout;


 writew(readw(MCF_CCM_MISCCR) & ~MCF_CCM_MISCCR_LIMP, MCF_CCM_MISCCR);


 while (!(readw(MCF_CCM_MISCCR) & MCF_CCM_MISCCR_PLL_LOCK))
  ;

 fout = get_sys_clock();

 return fout;
}
