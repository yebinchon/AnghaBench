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
struct TYPE_3__ {int /*<<< orphan*/  sem_signaled; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; scalar_t__ use_broadcast; int /*<<< orphan*/  sem_waiting; } ;
typedef  TYPE_1__ worker_config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(worker_config* c, int* flag) {
  /* Wait until waiter holds mutex and is preparing to wait. */
  FUNC6(&c->sem_waiting);

  /* Make sure waiter has begun waiting. */
  FUNC3(&c->mutex);

  /* Help waiter differentiate between spurious and legitimate wakeup. */
  FUNC0(*flag == 0);
  *flag = 1;

  if (c->use_broadcast)
    FUNC1(&c->cond);
  else
    FUNC2(&c->cond);

  FUNC4(&c->mutex);

  /* Done signaling. */
  FUNC5(&c->sem_signaled);
}