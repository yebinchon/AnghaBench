#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int tv_sec; scalar_t__ tv_nsec; scalar_t__ tv_usec; } ;
typedef  TYPE_1__ hc_timer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

double FUNC1 (hc_timer_t a)
{
  hc_timer_t hr_tmp;

  FUNC0 (&hr_tmp);

  #if defined(__APPLE__) && defined(MISSING_CLOCK_GETTIME)
  return (double) (((hr_tmp.tv_sec - (a).tv_sec) * 1000) + ((double) (hr_tmp.tv_usec - (a).tv_usec) / 1000));
  #else
  hc_timer_t s;

  s.tv_sec  = hr_tmp.tv_sec  - a.tv_sec;
  s.tv_nsec = hr_tmp.tv_nsec - a.tv_nsec;

  if (s.tv_nsec < 0)
  {
    s.tv_sec  -= 1;
    s.tv_nsec += 1000000000;
  }

  double r = ((double) s.tv_sec * 1000) + ((double) s.tv_nsec / 1000000);

  return r;
  #endif
}