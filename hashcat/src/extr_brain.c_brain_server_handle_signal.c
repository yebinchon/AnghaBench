
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int keep_running ;

void brain_server_handle_signal (int signo)
{
  if (signo == SIGINT)
  {
    keep_running = 0;
  }
}
