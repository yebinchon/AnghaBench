
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct event {int dummy; } ;


 int cleanup_test () ;
 int event_dispatch () ;
 int evtimer_add (struct event*,struct timeval*) ;
 int evtimer_set (struct event*,int ,int *) ;
 int evutil_gettimeofday (int *,int *) ;
 int evutil_timerclear (int *) ;
 int setup_test (char*) ;
 int tcalled ;
 int test_ok ;
 int test_timeval_diff_eq (int *,int *,int) ;
 int timeout_cb ;
 int tset ;

__attribute__((used)) static void
test_simpletimeout(void)
{
 struct timeval tv;
 struct event ev;

 setup_test("Simple timeout: ");

 tv.tv_usec = 200*1000;
 tv.tv_sec = 0;
 evutil_timerclear(&tcalled);
 evtimer_set(&ev, timeout_cb, ((void*)0));
 evtimer_add(&ev, &tv);

 evutil_gettimeofday(&tset, ((void*)0));
 event_dispatch();
 test_timeval_diff_eq(&tset, &tcalled, 200);

 test_ok = 1;
end:
 cleanup_test();
}
