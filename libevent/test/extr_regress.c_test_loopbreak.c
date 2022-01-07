
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct event {int dummy; } ;


 int break_cb ;
 int cleanup_test () ;
 int event_base_got_break (int ) ;
 int event_base_got_exit (int ) ;
 int event_dispatch () ;
 int evtimer_add (struct event*,struct timeval*) ;
 int evtimer_del (struct event*) ;
 int evtimer_set (struct event*,int ,int *) ;
 int fail_cb ;
 int global_base ;
 int setup_test (char*) ;
 int tt_assert (int) ;

__attribute__((used)) static void
test_loopbreak(void)
{
 struct event ev1, ev2;
 struct timeval tv;

 setup_test("Loop break: ");

 tv.tv_sec = 0;
 tv.tv_usec = 0;
 evtimer_set(&ev1, break_cb, ((void*)0));
 evtimer_add(&ev1, &tv);
 evtimer_set(&ev2, fail_cb, ((void*)0));
 evtimer_add(&ev2, &tv);

 event_dispatch();

 tt_assert(!event_base_got_exit(global_base));
 tt_assert(event_base_got_break(global_base));

 evtimer_del(&ev1);
 evtimer_del(&ev2);

end:
 cleanup_test();
}
