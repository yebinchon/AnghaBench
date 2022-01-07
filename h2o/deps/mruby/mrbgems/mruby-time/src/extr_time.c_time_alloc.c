
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct mrb_time {double sec; long usec; int timezone; } ;
typedef int mrb_state ;
typedef int mrb_float ;
typedef enum mrb_timezone { ____Placeholder_mrb_timezone } mrb_timezone ;


 int E_ARGUMENT_ERROR ;
 scalar_t__ INT32_MAX ;
 scalar_t__ INT32_MIN ;
 scalar_t__ INT64_MAX ;
 scalar_t__ INT64_MIN ;
 scalar_t__ NDIV (long,int) ;
 scalar_t__ UINT32_MAX ;
 scalar_t__ UINT64_MAX ;
 scalar_t__ llround (double) ;
 int mrb_check_num_exact (int *,int ) ;
 int mrb_float_value (int *,double) ;
 scalar_t__ mrb_malloc (int *,int) ;
 int mrb_raisef (int *,int ,char*,int ) ;
 int time_update_datetime (int *,struct mrb_time*) ;

__attribute__((used)) static struct mrb_time*
time_alloc(mrb_state *mrb, double sec, double usec, enum mrb_timezone timezone)
{
  struct mrb_time *tm;
  time_t tsec = 0;

  mrb_check_num_exact(mrb, (mrb_float)sec);
  mrb_check_num_exact(mrb, (mrb_float)usec);

  if (sizeof(time_t) == 4 && (sec > (double)INT32_MAX || (double)INT32_MIN > sec)) {
    goto out_of_range;
  }
  if (sizeof(time_t) == 8 && (sec > (double)INT64_MAX || (double)INT64_MIN > sec)) {
    goto out_of_range;
  }
  tsec = (time_t)sec;
  if ((sec > 0 && tsec < 0) || (sec < 0 && (double)tsec > sec)) {
  out_of_range:
    mrb_raisef(mrb, E_ARGUMENT_ERROR, "%S out of Time range", mrb_float_value(mrb, sec));
  }
  tm = (struct mrb_time *)mrb_malloc(mrb, sizeof(struct mrb_time));
  tm->sec = tsec;
  tm->usec = (time_t)llround((sec - tm->sec) * 1.0e6 + usec);
  if (tm->usec < 0) {
    long sec2 = (long)NDIV(tm->usec,1000000);
    tm->usec -= sec2 * 1000000;
    tm->sec += sec2;
  }
  else if (tm->usec >= 1000000) {
    long sec2 = (long)(tm->usec / 1000000);
    tm->usec -= sec2 * 1000000;
    tm->sec += sec2;
  }
  tm->timezone = timezone;
  time_update_datetime(mrb, tm);

  return tm;
}
