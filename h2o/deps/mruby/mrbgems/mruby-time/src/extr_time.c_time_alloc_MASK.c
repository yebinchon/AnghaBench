#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ time_t ;
struct mrb_time {double sec; long usec; int timezone; } ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_float ;
typedef  enum mrb_timezone { ____Placeholder_mrb_timezone } mrb_timezone ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 scalar_t__ INT32_MAX ; 
 scalar_t__ INT32_MIN ; 
 scalar_t__ INT64_MAX ; 
 scalar_t__ INT64_MIN ; 
 scalar_t__ FUNC0 (long,int) ; 
 scalar_t__ UINT32_MAX ; 
 scalar_t__ UINT64_MAX ; 
 scalar_t__ FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,double) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct mrb_time*) ; 

__attribute__((used)) static struct mrb_time*
FUNC7(mrb_state *mrb, double sec, double usec, enum mrb_timezone timezone)
{
  struct mrb_time *tm;
  time_t tsec = 0;

  FUNC2(mrb, (mrb_float)sec);
  FUNC2(mrb, (mrb_float)usec);
#ifndef MRB_TIME_T_UINT
  if (sizeof(time_t) == 4 && (sec > (double)INT32_MAX || (double)INT32_MIN > sec)) {
    goto out_of_range;
  }
  if (sizeof(time_t) == 8 && (sec > (double)INT64_MAX || (double)INT64_MIN > sec)) {
    goto out_of_range;
  }
#else
  if (sizeof(time_t) == 4 && (sec > (double)UINT32_MAX || (double)0 > sec)) {
    goto out_of_range;
  }
  if (sizeof(time_t) == 8 && (sec > (double)UINT64_MAX || (double)0 > sec)) {
    goto out_of_range;
  }
#endif
  tsec  = (time_t)sec;
  if ((sec > 0 && tsec < 0) || (sec < 0 && (double)tsec > sec)) {
  out_of_range:
    FUNC5(mrb, E_ARGUMENT_ERROR, "%S out of Time range", FUNC3(mrb, sec));
  }
  tm = (struct mrb_time *)FUNC4(mrb, sizeof(struct mrb_time));
  tm->sec  = tsec;
  tm->usec = (time_t)FUNC1((sec - tm->sec) * 1.0e6 + usec);
  if (tm->usec < 0) {
    long sec2 = (long)FUNC0(tm->usec,1000000); /* negative div */
    tm->usec -= sec2 * 1000000;
    tm->sec += sec2;
  }
  else if (tm->usec >= 1000000) {
    long sec2 = (long)(tm->usec / 1000000);
    tm->usec -= sec2 * 1000000;
    tm->sec += sec2;
  }
  tm->timezone = timezone;
  FUNC6(mrb, tm);

  return tm;
}