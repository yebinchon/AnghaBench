
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siginfo {int dummy; } ;
typedef int mcontext_t ;


 int SIGIO ;
 int SIGIO_MASK ;
 int block_signals_trace () ;
 int set_signals_trace (int) ;
 int sig_handler_common (int,struct siginfo*,int *) ;
 int signals_enabled ;
 int signals_pending ;

void sig_handler(int sig, struct siginfo *si, mcontext_t *mc)
{
 int enabled;

 enabled = signals_enabled;
 if (!enabled && (sig == SIGIO)) {
  signals_pending |= SIGIO_MASK;
  return;
 }

 block_signals_trace();

 sig_handler_common(sig, si, mc);

 set_signals_trace(enabled);
}
