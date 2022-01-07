
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int child_pending ;
 int wait (int*) ;

__attribute__((used)) static void
instance_handle_sigchld(int sig)
{
 int pid = 0;
 wait(&pid);
 child_pending = 0;
}
