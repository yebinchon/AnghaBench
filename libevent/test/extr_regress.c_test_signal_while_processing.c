
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int member_1; int member_0; } ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;


 int SIGUSR1 ;
 int called ;
 int cleanup_test () ;
 int event_base_free (struct event_base*) ;
 int event_dispatch () ;
 struct event_base* event_init () ;
 int evtimer_add (struct event*,struct timeval*) ;
 int evtimer_set (struct event*,int ,struct event*) ;
 int setup_test (char*) ;
 int signal_add (struct event*,int *) ;
 int signal_cb_swp ;
 int signal_set (struct event*,int ,int ,int *) ;
 int test_ok ;
 int timeout_cb_swp ;

__attribute__((used)) static void
test_signal_while_processing(void)
{
 struct event_base *base = event_init();
 struct event ev, ev_timer;
 struct timeval tv = {0, 0};

 setup_test("Receiving a signal while processing other signal: ");

 called = -1;
 test_ok = 1;
 signal_set(&ev, SIGUSR1, signal_cb_swp, ((void*)0));
 signal_add(&ev, ((void*)0));
 evtimer_set(&ev_timer, timeout_cb_swp, &ev_timer);
 evtimer_add(&ev_timer, &tv);
 event_dispatch();

 event_base_free(base);
 cleanup_test();
 return;
}
