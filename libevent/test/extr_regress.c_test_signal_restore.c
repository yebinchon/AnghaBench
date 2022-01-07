
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_mask; int sa_handler; } ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;


 int SIGUSR1 ;
 scalar_t__ SIG_ERR ;
 int cleanup_test () ;
 int event_base_free (struct event_base*) ;
 struct event_base* event_init () ;
 int evsignal_add (struct event*,int *) ;
 int evsignal_del (struct event*) ;
 int evsignal_set (struct event*,int ,int ,struct event*) ;
 int getpid () ;
 int kill (int ,int ) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 scalar_t__ signal (int ,int ) ;
 int signal_cb ;
 int signal_cb_sa ;
 int test_ok ;

__attribute__((used)) static void
test_signal_restore(void)
{
 struct event ev;
 struct event_base *base = event_init();




 test_ok = 0;







 if (signal(SIGUSR1, signal_cb_sa) == SIG_ERR)
  goto out;

 evsignal_set(&ev, SIGUSR1, signal_cb, &ev);
 evsignal_add(&ev, ((void*)0));
 evsignal_del(&ev);

 kill(getpid(), SIGUSR1);

 if (test_ok != 2)
  test_ok = 0;
out:
 event_base_free(base);
 cleanup_test();
 return;
}
