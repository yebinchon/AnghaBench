
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siginfo {int dummy; } ;
typedef int mcontext_t ;


 int SIGALRM_MASK ;
 int block_signals_trace () ;
 int set_signals_trace (int) ;
 int signals_active ;
 int signals_enabled ;
 int signals_pending ;
 int timer_real_alarm_handler (int *) ;

void timer_alarm_handler(int sig, struct siginfo *unused_si, mcontext_t *mc)
{
 int enabled;

 enabled = signals_enabled;
 if (!signals_enabled) {
  signals_pending |= SIGALRM_MASK;
  return;
 }

 block_signals_trace();

 signals_active |= SIGALRM_MASK;

 timer_real_alarm_handler(mc);

 signals_active &= ~SIGALRM_MASK;

 set_signals_trace(enabled);
}
