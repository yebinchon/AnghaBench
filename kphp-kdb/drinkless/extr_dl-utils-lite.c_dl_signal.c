
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SA_ONSTACK ;
 int SA_RESTART ;
 int dl_get_empty_sigset () ;
 int dl_sigaction (int,void (*) (int),int ,int,int *) ;

void dl_signal (int sig, void (*handler) (int)) {
  dl_sigaction (sig, handler, dl_get_empty_sigset(), SA_ONSTACK | SA_RESTART, ((void*)0));
}
