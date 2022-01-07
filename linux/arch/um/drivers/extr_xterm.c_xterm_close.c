
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xterm_chan {int pid; int helper_pid; } ;


 int os_close_file (int) ;
 int os_kill_process (int,int) ;

__attribute__((used)) static void xterm_close(int fd, void *d)
{
 struct xterm_chan *data = d;

 if (data->pid != -1)
  os_kill_process(data->pid, 1);
 data->pid = -1;

 if (data->helper_pid != -1)
  os_kill_process(data->helper_pid, 0);
 data->helper_pid = -1;

 os_close_file(fd);
}
