
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int block_signals () ;
 scalar_t__ current_thread_info () ;
 int trace_hardirqs_off () ;

void block_signals_trace(void)
{
 block_signals();
 if (current_thread_info())
  trace_hardirqs_off();
}
