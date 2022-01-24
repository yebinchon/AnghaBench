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
struct TYPE_3__ {int msg_queue; int /*<<< orphan*/ * items; int /*<<< orphan*/  member; } ;
typedef  TYPE_1__ uv__os390_epoll ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_RMID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  global_epoll_lock ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(uv__os390_epoll* lst) {
  /* Remove epoll instance from global queue */
  FUNC3(&global_epoll_lock);
  FUNC0(&lst->member);
  FUNC4(&global_epoll_lock);

  /* Free resources */
  FUNC1(lst->msg_queue, IPC_RMID, NULL);
  lst->msg_queue = -1;
  FUNC2(lst->items);
  lst->items = NULL;
}