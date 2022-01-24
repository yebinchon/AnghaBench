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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  async ; 
 int async_cb_called ; 
 int /*<<< orphan*/  mutex ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *arg) {
  int n;
  int r;

  for (;;) {
    FUNC2(&mutex);
    n = async_cb_called;
    FUNC3(&mutex);

    if (n == 3) {
      break;
    }

    r = FUNC1(&async);
    FUNC0(r == 0);

    /* Work around a bug in Valgrind.
     *
     * Valgrind runs threads not in parallel but sequentially, i.e. one after
     * the other. It also doesn't preempt them, instead it depends on threads
     * yielding voluntarily by making a syscall.
     *
     * That never happens here: the pipe that is associated with the async
     * handle is written to once but that's too early for Valgrind's scheduler
     * to kick in. Afterwards, the thread busy-loops, starving the main thread.
     * Therefore, we yield.
     *
     * This behavior has been observed with Valgrind 3.7.0 and 3.9.0.
     */
    FUNC4(0);
  }
}