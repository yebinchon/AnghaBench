
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIG_BLOCK ;
 int SIG_UNBLOCK ;
 int errno ;
 int sigaddset (int *,int) ;
 int sigemptyset (int *) ;
 scalar_t__ sigprocmask (int ,int *,int *) ;

int change_sig(int signal, int on)
{
 sigset_t sigset;

 sigemptyset(&sigset);
 sigaddset(&sigset, signal);
 if (sigprocmask(on ? SIG_UNBLOCK : SIG_BLOCK, &sigset, ((void*)0)) < 0)
  return -errno;

 return 0;
}
