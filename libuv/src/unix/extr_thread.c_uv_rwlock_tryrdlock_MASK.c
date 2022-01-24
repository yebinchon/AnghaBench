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
typedef  int /*<<< orphan*/  uv_rwlock_t ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int UV_EBUSY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(uv_rwlock_t* rwlock) {
  int err;

  err = FUNC1(rwlock);
  if (err) {
    if (err != EBUSY && err != EAGAIN)
      FUNC0();
    return UV_EBUSY;
  }

  return 0;
}