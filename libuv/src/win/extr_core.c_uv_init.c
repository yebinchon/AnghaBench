
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEM_FAILCRITICALERRORS ;
 int SEM_NOGPFAULTERRORBOX ;
 int SEM_NOOPENFILEERRORBOX ;
 int SetErrorMode (int) ;
 int _CrtSetReportHook (int ) ;
 int _set_invalid_parameter_handler (int ) ;
 int uv__crt_dbg_report_handler ;
 int uv__crt_invalid_parameter_handler ;
 int uv__init_detect_system_wakeup () ;
 int uv__loops_init () ;
 int uv__util_init () ;
 int uv_console_init () ;
 int uv_fs_init () ;
 int uv_signals_init () ;
 int uv_winapi_init () ;
 int uv_winsock_init () ;

__attribute__((used)) static void uv_init(void) {

  SetErrorMode(SEM_FAILCRITICALERRORS | SEM_NOGPFAULTERRORBOX |
               SEM_NOOPENFILEERRORBOX);





  _set_invalid_parameter_handler(uv__crt_invalid_parameter_handler);
  uv__loops_init();




  uv_winapi_init();


  uv_winsock_init();


  uv_fs_init();


  uv_signals_init();


  uv_console_init();


  uv__util_init();


  uv__init_detect_system_wakeup();
}
