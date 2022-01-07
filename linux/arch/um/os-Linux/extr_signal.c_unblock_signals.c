
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGALRM_MASK ;
 int SIGIO ;
 int SIGIO_MASK ;
 int barrier () ;
 int sig_handler_common (int ,int *,int *) ;
 int signals_active ;
 int signals_enabled ;
 int signals_pending ;
 int timer_real_alarm_handler (int *) ;
 int um_trace_signals_off () ;
 int um_trace_signals_on () ;

void unblock_signals(void)
{
 int save_pending;

 if (signals_enabled == 1)
  return;

 signals_enabled = 1;






 while (1) {







  barrier();

  save_pending = signals_pending;
  if (save_pending == 0)
   return;

  signals_pending = 0;
  signals_enabled = 0;
  um_trace_signals_off();
  if (save_pending & SIGIO_MASK)
   sig_handler_common(SIGIO, ((void*)0), ((void*)0));



  if ((save_pending & SIGALRM_MASK) && (!(signals_active & SIGALRM_MASK)))
   timer_real_alarm_handler(((void*)0));



  if (!(signals_pending & SIGIO_MASK) && (signals_active & SIGALRM_MASK))
   return;


  um_trace_signals_on();
  signals_enabled = 1;
 }
}
