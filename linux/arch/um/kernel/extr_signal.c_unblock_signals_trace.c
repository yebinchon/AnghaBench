
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ current_thread_info () ;
 int trace_hardirqs_on () ;
 int unblock_signals () ;

void unblock_signals_trace(void)
{
 if (current_thread_info())
  trace_hardirqs_on();
 unblock_signals();
}
