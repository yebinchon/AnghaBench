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
typedef  int /*<<< orphan*/  mtx_t ;
typedef  int /*<<< orphan*/  cnd_t ;

/* Variables and functions */
 int /*<<< orphan*/  INFINITE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int thrd_error ; 
 int thrd_success ; 

int FUNC2(cnd_t *cond, mtx_t *mtx)
{
#if defined(_TTHREAD_WIN32_)
  return _cnd_timedwait_win32(cond, mtx, INFINITE);
#else
  return FUNC1(cond, mtx) == 0 ? thrd_success : thrd_error;
#endif
}