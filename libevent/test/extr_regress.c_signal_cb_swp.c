
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int called ;
 int event_loopexit (int *) ;
 int getpid () ;
 int kill (int ,int) ;

__attribute__((used)) static void
signal_cb_swp(int sig, short event, void *arg)
{
 called++;
 if (called < 5)
  kill(getpid(), sig);
 else
  event_loopexit(((void*)0));
}
