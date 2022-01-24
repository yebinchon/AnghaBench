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
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_MUTEX_ERRORCHECK ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6(uv_mutex_t* mutex) {
#if defined(NDEBUG) || !defined(PTHREAD_MUTEX_ERRORCHECK)
  return FUNC0(FUNC2(mutex, NULL));
#else
  pthread_mutexattr_t attr;
  int err;

  if (pthread_mutexattr_init(&attr))
    abort();

  if (pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_ERRORCHECK))
    abort();

  err = pthread_mutex_init(mutex, &attr);

  if (pthread_mutexattr_destroy(&attr))
    abort();

  return UV__ERR(err);
#endif
}