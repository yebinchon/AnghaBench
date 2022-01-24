#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ mtx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OS_UNFAIR_LOCK_INIT ; 
 int /*<<< orphan*/  PTHREAD_MUTEX_DEFAULT ; 
 int /*<<< orphan*/  _CRT_SPINCOUNT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool
FUNC5(mtx_t *mtx) {
#ifdef _WIN32
	if (!InitializeCriticalSectionAndSpinCount(&mtx->lock,
	    _CRT_SPINCOUNT)) {
		return true;
	}
#elif (defined(JEMALLOC_OS_UNFAIR_LOCK))
	mtx->lock = OS_UNFAIR_LOCK_INIT;
#else
	pthread_mutexattr_t attr;

	if (FUNC3(&attr) != 0) {
		return true;
	}
	FUNC4(&attr, PTHREAD_MUTEX_DEFAULT);
	if (FUNC1(&mtx->lock, &attr) != 0) {
		FUNC2(&attr);
		return true;
	}
	FUNC2(&attr);
#endif
	return false;
}