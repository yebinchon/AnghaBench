
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGABRT ;
 int SIGBUS ;
 int SIGFPE ;
 int SIGILL ;
 int SIGPIPE ;
 int SIGSEGV ;
 int SIGTERM ;
 int SIG_IGN ;
 int crash_handler_fd ;
 int h2o_set_signal_handler (int ,int ) ;
 int on_sigfatal ;
 int on_sigterm ;
 int popen_crash_handler () ;

__attribute__((used)) static void setup_signal_handlers(void)
{
    h2o_set_signal_handler(SIGTERM, on_sigterm);
    h2o_set_signal_handler(SIGPIPE, SIG_IGN);
}
