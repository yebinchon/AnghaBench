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
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;
struct TYPE_4__ {int mRecursive; int /*<<< orphan*/  mHandle; int /*<<< orphan*/  mAlreadyLocked; } ;
typedef  TYPE_1__ mtx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PTHREAD_MUTEX_RECURSIVE ; 
 int mtx_recursive ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int thrd_error ; 
 int thrd_success ; 

int FUNC5(mtx_t *mtx, int type)
{
#if defined(_TTHREAD_WIN32_)
  mtx->mAlreadyLocked = FALSE;
  mtx->mRecursive = type & mtx_recursive;
  InitializeCriticalSection(&mtx->mHandle);
  return thrd_success;
#else
  int ret;
  pthread_mutexattr_t attr;
  FUNC3(&attr);
  if (type & mtx_recursive)
  {
    FUNC4(&attr, PTHREAD_MUTEX_RECURSIVE);
  }
  ret = FUNC1(mtx, &attr);
  FUNC2(&attr);
  return ret == 0 ? thrd_success : thrd_error;
#endif
}