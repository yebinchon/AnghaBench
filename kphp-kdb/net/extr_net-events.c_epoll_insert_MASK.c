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
struct TYPE_5__ {int fd; } ;
struct epoll_event {int events; TYPE_1__ data; } ;
struct TYPE_6__ {int fd; int state; int epoll_state; scalar_t__ ready; } ;
typedef  TYPE_2__ event_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLL_CTL_ADD ; 
 int /*<<< orphan*/  EPOLL_CTL_MOD ; 
 int EVT_IN_EPOLL ; 
 int EVT_LEVEL ; 
 int EVT_NEW ; 
 int EVT_NOHUP ; 
 int EVT_RWX ; 
 TYPE_2__* Events ; 
 int MAX_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct epoll_event*) ; 
 int /*<<< orphan*/  epoll_fd ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 

int FUNC7 (int fd, int flags) {
  event_t *ev;
  int ef;
  struct epoll_event ee;
  if (!flags) {
    return FUNC3 (fd);
  }
  FUNC0 (fd >= 0 && fd < MAX_EVENTS);
  ev = Events + fd;
  if (ev->fd != fd) {
    FUNC4 (ev, 0, sizeof(event_t));
    ev->fd = fd;
  }
  flags &= EVT_NEW | EVT_NOHUP | EVT_LEVEL | EVT_RWX;
  ev->ready = 0; // !!! this bugfix led to some AIO-related bugs, now fixed with the aid of C_REPARSE flag
  if ((ev->state & (EVT_LEVEL | EVT_RWX | EVT_IN_EPOLL)) == flags + EVT_IN_EPOLL) {
    return 0;
  }
  ev->state = (ev->state & ~(EVT_LEVEL | EVT_RWX)) | (flags & (EVT_LEVEL | EVT_RWX));
  ef = FUNC1 (flags);
  if (ef != ev->epoll_state || (flags & EVT_NEW) || !(ev->state & EVT_IN_EPOLL)) {
    ee.events = ef;
    ee.data.fd = fd; 

    FUNC6 (1, "epoll_ctl(%d,%d,%d,%d,%08x)\n", epoll_fd, (ev->state & EVT_IN_EPOLL) ? EPOLL_CTL_MOD : EPOLL_CTL_ADD, fd, ee.data.fd, ee.events);

    if (FUNC2 (epoll_fd, (ev->state & EVT_IN_EPOLL) ? EPOLL_CTL_MOD : EPOLL_CTL_ADD, fd, &ee) < 0) {
      FUNC5("epoll_ctl()");
    }
    ev->state |= EVT_IN_EPOLL;
  }
  return 0;
}