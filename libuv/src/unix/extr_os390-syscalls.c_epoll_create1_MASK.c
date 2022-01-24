#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int size; int /*<<< orphan*/  member; TYPE_1__* items; int /*<<< orphan*/  msg_queue; } ;
typedef  TYPE_2__ uv__os390_epoll ;
struct TYPE_7__ {scalar_t__ revents; int /*<<< orphan*/  events; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  epoll_init ; 
 int /*<<< orphan*/  global_epoll_lock ; 
 int /*<<< orphan*/  global_epoll_queue ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  once ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

uv__os390_epoll* FUNC7(int flags) {
  uv__os390_epoll* lst;

  lst = FUNC3(sizeof(*lst));
  if (lst != NULL) {
    /* initialize list */
    lst->size = 0;
    lst->items = NULL;
    FUNC1(lst);
    FUNC2(lst, 1);
    lst->items[lst->size - 1].fd = lst->msg_queue;
    lst->items[lst->size - 1].events = POLLIN;
    lst->items[lst->size - 1].revents = 0;
    FUNC6(&once, epoll_init);
    FUNC4(&global_epoll_lock);
    FUNC0(&global_epoll_queue, &lst->member);
    FUNC5(&global_epoll_lock);
  }

  return lst;
}