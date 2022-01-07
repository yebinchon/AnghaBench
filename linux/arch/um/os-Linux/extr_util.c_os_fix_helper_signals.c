
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int SIGTERM ;
 int SIGWINCH ;
 int SIG_DFL ;
 int SIG_IGN ;
 int signal (int ,int ) ;

void os_fix_helper_signals(void)
{
 signal(SIGWINCH, SIG_IGN);
 signal(SIGINT, SIG_DFL);
 signal(SIGTERM, SIG_DFL);
}
