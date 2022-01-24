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
typedef  int /*<<< orphan*/  uv_cond_t ;
typedef  int /*<<< orphan*/  pthread_condattr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6(uv_cond_t* cond) {
  pthread_condattr_t attr;
  int err;

  err = FUNC4(&attr);
  if (err)
    return FUNC0(err);

#if !(defined(__ANDROID_API__) && __ANDROID_API__ < 21)
  err = FUNC5(&attr, CLOCK_MONOTONIC);
  if (err)
    goto error2;
#endif

  err = FUNC2(cond, &attr);
  if (err)
    goto error2;

  err = FUNC3(&attr);
  if (err)
    goto error;

  return 0;

error:
  FUNC1(cond);
error2:
  FUNC3(&attr);
  return FUNC0(err);
}