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
struct timeval {scalar_t__ tv_sec; int tv_usec; } ;
struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;
struct mrb_time {scalar_t__ sec; int usec; int /*<<< orphan*/  timezone; } ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  E_RUNTIME_ERROR ; 
 int /*<<< orphan*/  MRB_TIMEZONE_LOCAL ; 
 int /*<<< orphan*/  TIME_UTC ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mrb_time*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct mrb_time*) ; 
 scalar_t__ FUNC6 (struct timespec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mrb_time*
FUNC7(mrb_state *mrb)
{
  struct mrb_time *tm;

  tm = (struct mrb_time *)FUNC2(mrb, sizeof(*tm));
#if defined(TIME_UTC) && !defined(__ANDROID__)
  {
    struct timespec ts;
    if (timespec_get(&ts, TIME_UTC) == 0) {
      mrb_free(mrb, tm);
      mrb_raise(mrb, E_RUNTIME_ERROR, "timespec_get() failed for unknown reasons");
    }
    tm->sec = ts.tv_sec;
    tm->usec = ts.tv_nsec / 1000;
  }
#elif defined(NO_GETTIMEOFDAY)
  {
    static time_t last_sec = 0, last_usec = 0;

    tm->sec  = time(NULL);
    if (tm->sec != last_sec) {
      last_sec = tm->sec;
      last_usec = 0;
    }
    else {
      /* add 1 usec to differentiate two times */
      last_usec += 1;
    }
    tm->usec = last_usec;
  }
#else
  {
    struct timeval tv;

    FUNC0(&tv, NULL);
    tm->sec = tv.tv_sec;
    tm->usec = tv.tv_usec;
  }
#endif
  tm->timezone = MRB_TIMEZONE_LOCAL;
  FUNC5(mrb, tm);

  return tm;
}