
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InitializeCriticalSection (int *) ;
 int SetConsoleCtrlHandler (int ,int ) ;
 int TRUE ;
 int abort () ;
 int uv__signal_control_handler ;
 int uv__signal_lock ;

void uv_signals_init(void) {
  InitializeCriticalSection(&uv__signal_lock);
  if (!SetConsoleCtrlHandler(uv__signal_control_handler, TRUE))
    abort();
}
