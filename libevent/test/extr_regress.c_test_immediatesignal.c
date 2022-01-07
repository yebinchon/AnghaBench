
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;


 int EVLOOP_NONBLOCK ;
 int SIGUSR1 ;
 int cleanup_test () ;
 int event_loop (int ) ;
 int evsignal_add (struct event*,int *) ;
 int evsignal_del (struct event*) ;
 int evsignal_set (struct event*,int ,int ,struct event*) ;
 int getpid () ;
 int kill (int ,int ) ;
 int signal_cb ;
 scalar_t__ test_ok ;

__attribute__((used)) static void
test_immediatesignal(void)
{
 struct event ev;

 test_ok = 0;
 evsignal_set(&ev, SIGUSR1, signal_cb, &ev);
 evsignal_add(&ev, ((void*)0));
 kill(getpid(), SIGUSR1);
 event_loop(EVLOOP_NONBLOCK);
 evsignal_del(&ev);
 cleanup_test();
}
