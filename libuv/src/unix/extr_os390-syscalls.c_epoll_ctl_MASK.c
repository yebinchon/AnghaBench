#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int size; TYPE_1__* items; } ;
typedef  TYPE_2__ uv__os390_epoll ;
struct epoll_event {int /*<<< orphan*/  events; } ;
struct TYPE_5__ {int fd; scalar_t__ revents; int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  ENOENT ; 
 int EPOLL_CTL_ADD ; 
 int EPOLL_CTL_DEL ; 
 int EPOLL_CTL_MOD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  global_epoll_lock ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(uv__os390_epoll* lst,
              int op,
              int fd,
              struct epoll_event *event) {
  FUNC2(&global_epoll_lock);

  if (op == EPOLL_CTL_DEL) {
    if (fd >= lst->size || lst->items[fd].fd == -1) {
      FUNC3(&global_epoll_lock);
      errno = ENOENT;
      return -1;
    }
    lst->items[fd].fd = -1;
  } else if (op == EPOLL_CTL_ADD) {

    /* Resizing to 'fd + 1' would expand the list to contain at least
     * 'fd'. But we need to guarantee that the last index on the list 
     * is reserved for the message queue. So specify 'fd + 2' instead.
     */
    FUNC1(lst, fd + 2);
    if (lst->items[fd].fd != -1) {
      FUNC3(&global_epoll_lock);
      errno = EEXIST;
      return -1;
    }
    lst->items[fd].fd = fd;
    lst->items[fd].events = event->events;
    lst->items[fd].revents = 0;
  } else if (op == EPOLL_CTL_MOD) {
    if (fd >= lst->size - 1 || lst->items[fd].fd == -1) {
      FUNC3(&global_epoll_lock);
      errno = ENOENT;
      return -1;
    }
    lst->items[fd].events = event->events;
    lst->items[fd].revents = 0;
  } else
    FUNC0();

  FUNC3(&global_epoll_lock);
  return 0;
}