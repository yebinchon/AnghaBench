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
struct TYPE_3__ {int /*<<< orphan*/  sem_signaled; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/  sem_waiting; } ;
typedef  TYPE_1__ worker_config ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(worker_config* c, const int* flag) {
  int r;

  r = 0;

  FUNC2(&c->mutex);

  /* Tell signal'er that I am waiting. */
  FUNC4(&c->sem_waiting);

  /* Wait until I get a non-spurious signal. */
  do {
    r = FUNC1(&c->cond, &c->mutex, (uint64_t)(1 * 1e9)); /* 1 s */
    FUNC0(r == 0); /* Should not time out. */
  } while (*flag == 0);
  FUNC0(*flag == 1);

  FUNC3(&c->mutex);

  /* Wait for my signal'er to finish. */
  FUNC5(&c->sem_signaled);
  return r;
}