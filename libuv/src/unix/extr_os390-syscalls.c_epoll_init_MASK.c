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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  after_fork ; 
 int /*<<< orphan*/  before_fork ; 
 int /*<<< orphan*/  child_fork ; 
 int /*<<< orphan*/  global_epoll_lock ; 
 int /*<<< orphan*/  global_epoll_queue ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void) {
  FUNC0(&global_epoll_queue);
  if (FUNC3(&global_epoll_lock))
    FUNC1();

  if (FUNC2(&before_fork, &after_fork, &child_fork))
    FUNC1();
}