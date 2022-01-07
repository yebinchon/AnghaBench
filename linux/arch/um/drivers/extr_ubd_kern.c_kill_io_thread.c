
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int io_pid ;
 int os_kill_process (int,int) ;

__attribute__((used)) static void kill_io_thread(void)
{
 if(io_pid != -1)
  os_kill_process(io_pid, 1);
}
