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
struct TYPE_3__ {unsigned int n; int /*<<< orphan*/  mutex; int /*<<< orphan*/  turnstile1; int /*<<< orphan*/  turnstile2; scalar_t__ count; } ;
typedef  TYPE_1__ uv_barrier_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 

int FUNC4(uv_barrier_t* barrier, unsigned int count) {
  int err;

  barrier->n = count;
  barrier->count = 0;

  err = FUNC1(&barrier->mutex);
  if (err)
    return err;

  err = FUNC3(&barrier->turnstile1, 0);
  if (err)
    goto error2;

  err = FUNC3(&barrier->turnstile2, 1);
  if (err)
    goto error;

  return 0;

error:
  FUNC2(&barrier->turnstile1);
error2:
  FUNC0(&barrier->mutex);
  return err;

}