
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGALRM ;
 int kill (int,int ) ;

void os_alarm_process(int pid)
{
 kill(pid, SIGALRM);
}
