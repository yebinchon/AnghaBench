
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct timeval {scalar_t__ tv_sec; int tv_usec; } ;
struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;
struct mrb_time {scalar_t__ sec; int usec; int timezone; } ;
typedef int mrb_state ;


 int E_RUNTIME_ERROR ;
 int MRB_TIMEZONE_LOCAL ;
 int TIME_UTC ;
 int gettimeofday (struct timeval*,int *) ;
 int mrb_free (int *,struct mrb_time*) ;
 scalar_t__ mrb_malloc (int *,int) ;
 int mrb_raise (int *,int ,char*) ;
 scalar_t__ time (int *) ;
 int time_update_datetime (int *,struct mrb_time*) ;
 scalar_t__ timespec_get (struct timespec*,int ) ;

__attribute__((used)) static struct mrb_time*
current_mrb_time(mrb_state *mrb)
{
  struct mrb_time *tm;

  tm = (struct mrb_time *)mrb_malloc(mrb, sizeof(*tm));
  {
    struct timeval tv;

    gettimeofday(&tv, ((void*)0));
    tm->sec = tv.tv_sec;
    tm->usec = tv.tv_usec;
  }

  tm->timezone = MRB_TIMEZONE_LOCAL;
  time_update_datetime(mrb, tm);

  return tm;
}
