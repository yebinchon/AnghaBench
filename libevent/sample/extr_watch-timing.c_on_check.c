
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; long double tv_usec; } ;
struct evwatch_check_cb_info {int dummy; } ;
struct evwatch {int dummy; } ;


 struct timeval check_time ;
 int delays ;
 int evutil_gettimeofday (struct timeval*,int *) ;
 int evutil_timersub (struct timeval*,int *,struct timeval*) ;
 int expected ;
 int histogram_update (int ,scalar_t__) ;
 int prepare_time ;

__attribute__((used)) static void on_check(struct evwatch *watcher, const struct evwatch_check_cb_info *info, void *arg)
{
 struct timeval actual, delay;
 evutil_gettimeofday(&check_time, ((void*)0));
 evutil_timersub(&check_time, &prepare_time, &actual);
 evutil_timersub(&actual, &expected, &delay);
 if (delay.tv_sec >= 0)
  histogram_update(delays, delay.tv_sec + delay.tv_usec / 1000000.0l);
}
