
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct event_base {int dummy; } ;


 int cleanup_test () ;
 int event_base_dispatch (struct event_base*) ;
 int event_base_free (struct event_base*) ;
 int event_base_got_break (struct event_base*) ;
 int event_base_got_exit (struct event_base*) ;
 int event_base_loopexit (struct event_base*,struct timeval*) ;
 struct event_base* event_base_new () ;
 int evutil_gettimeofday (struct timeval*,int *) ;
 int setup_test (char*) ;
 int test_ok ;
 int test_timeval_diff_eq (struct timeval*,struct timeval*,int) ;
 int tt_assert (int) ;

__attribute__((used)) static void
test_loopexit_multiple(void)
{
 struct timeval tv, tv_start, tv_end;
 struct event_base *base;

 setup_test("Loop Multiple exit: ");

 base = event_base_new();

 tv.tv_usec = 200*1000;
 tv.tv_sec = 0;
 event_base_loopexit(base, &tv);

 tv.tv_usec = 0;
 tv.tv_sec = 3;
 event_base_loopexit(base, &tv);

 evutil_gettimeofday(&tv_start, ((void*)0));
 event_base_dispatch(base);
 evutil_gettimeofday(&tv_end, ((void*)0));

 tt_assert(event_base_got_exit(base));
 tt_assert(!event_base_got_break(base));

 event_base_free(base);

 test_timeval_diff_eq(&tv_start, &tv_end, 200);

 test_ok = 1;

end:
 cleanup_test();
}
