
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CATCH_EINTR (int ) ;
 int SIGKILL ;
 int __WALL ;
 int kill (int,int ) ;
 int waitpid (int,int *,int ) ;

void os_kill_process(int pid, int reap_child)
{
 kill(pid, SIGKILL);
 if (reap_child)
  CATCH_EINTR(waitpid(pid, ((void*)0), __WALL));
}
