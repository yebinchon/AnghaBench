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
typedef  int /*<<< orphan*/  uv_barrier_t ;

/* Variables and functions */
 int PTHREAD_BARRIER_SERIAL_THREAD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(uv_barrier_t* barrier) {
  int rc;

  rc = FUNC1(barrier);
  if (rc != 0)
    if (rc != PTHREAD_BARRIER_SERIAL_THREAD)
      FUNC0();

  return rc == PTHREAD_BARRIER_SERIAL_THREAD;
}