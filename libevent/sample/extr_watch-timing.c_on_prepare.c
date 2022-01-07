
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {long double tv_usec; scalar_t__ tv_sec; } ;
struct evwatch_prepare_cb_info {int dummy; } ;
struct evwatch {int dummy; } ;
struct TYPE_3__ {scalar_t__ tv_sec; } ;


 TYPE_1__ check_time ;
 int durations ;
 int evutil_gettimeofday (int *,int *) ;
 int evutil_timersub (int *,TYPE_1__*,struct timeval*) ;
 int evwatch_prepare_get_timeout (struct evwatch_prepare_cb_info const*,int *) ;
 int expected ;
 int histogram_update (int ,scalar_t__) ;
 int prepare_time ;

__attribute__((used)) static void on_prepare(struct evwatch *watcher, const struct evwatch_prepare_cb_info *info, void *arg)
{
 struct timeval duration;
 evutil_gettimeofday(&prepare_time, ((void*)0));
 evwatch_prepare_get_timeout(info, &expected);
 if (check_time.tv_sec != 0) {
  evutil_timersub(&prepare_time, &check_time, &duration);
  histogram_update(durations, duration.tv_sec + duration.tv_usec / 1000000.0l);
 }
}
