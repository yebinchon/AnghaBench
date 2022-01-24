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
typedef  int /*<<< orphan*/  uv_mutex_t ;
typedef  int /*<<< orphan*/  uv_cond_t ;
typedef  int uint64_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct timespec {int tv_sec; int tv_nsec; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int NANOSEC ; 
 int /*<<< orphan*/  UV_CLOCK_PRECISE ; 
 int UV_EINVAL ; 
 int UV_ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(uv_cond_t* cond, uv_mutex_t* mutex, uint64_t timeout) {
  int r;
  struct timespec ts;
#if defined(__MVS__)
  struct timeval tv;
#endif

#if defined(__APPLE__) && defined(__MACH__)
  ts.tv_sec = timeout / NANOSEC;
  ts.tv_nsec = timeout % NANOSEC;
  r = pthread_cond_timedwait_relative_np(cond, mutex, &ts);
#else
#if defined(__MVS__)
  if (gettimeofday(&tv, NULL))
    abort();
  timeout += tv.tv_sec * NANOSEC + tv.tv_usec * 1e3;
#else
  timeout += FUNC5(UV_CLOCK_PRECISE);
#endif
  ts.tv_sec = timeout / NANOSEC;
  ts.tv_nsec = timeout % NANOSEC;
#if defined(__ANDROID_API__) && __ANDROID_API__ < 21

  /*
   * The bionic pthread implementation doesn't support CLOCK_MONOTONIC,
   * but has this alternative function instead.
   */
  r = pthread_cond_timedwait_monotonic_np(cond, mutex, &ts);
#else
  r = FUNC2(cond, mutex, &ts);
#endif /* __ANDROID_API__ */
#endif


  if (r == 0)
    return 0;

  if (r == ETIMEDOUT)
    return UV_ETIMEDOUT;

  FUNC0();
#ifndef __SUNPRO_C
  return UV_EINVAL;  /* Satisfy the compiler. */
#endif
}