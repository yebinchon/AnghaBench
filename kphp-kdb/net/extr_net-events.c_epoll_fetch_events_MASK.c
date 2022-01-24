#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int fd; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  epoll_ready; int /*<<< orphan*/  ready; } ;
typedef  TYPE_2__ event_t ;
struct TYPE_7__ {int fd; } ;
struct TYPE_9__ {int /*<<< orphan*/  events; TYPE_1__ data; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 TYPE_2__* Events ; 
 int MAX_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  epoll_fd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_4__*,int,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  ev_timestamp ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* new_ev_list ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int verbosity ; 

int FUNC6 (int timeout) {
  int fd, i;
  int res = FUNC2 (epoll_fd, new_ev_list, MAX_EVENTS, timeout);
  if (res < 0 && errno == EINTR) {
    res = 0;
  }
  if (res < 0) {
    FUNC4 ("epoll_wait()");
  }
  if (verbosity > 1 && res) {
    FUNC3 ("epoll_wait(%d, ...) = %d\n", epoll_fd, res);
  }
  for (i = 0; i < res; i++) {
    fd = new_ev_list[i].data.fd;
    FUNC0 (fd >= 0 && fd < MAX_EVENTS);
    event_t *ev = Events + fd;
    FUNC0 (ev->fd == fd);
    ev->ready |= FUNC1 (ev->epoll_ready = new_ev_list[i].events);
    ev->timestamp = ev_timestamp;
    FUNC5 (ev);
  }
  return res;
}