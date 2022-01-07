
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getpgrp () ;

int is_skas_winch(int pid, int fd, void *data)
{
 return pid == getpgrp();
}
