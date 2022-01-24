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
struct connection {int state; int error; scalar_t__ wra; int /*<<< orphan*/  Out; int /*<<< orphan*/  In; } ;
struct TYPE_3__ {int epoll_ready; int ready; int state; scalar_t__ data; } ;
typedef  TYPE_1__ event_t ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int EPOLLRDHUP ; 
 int EVA_DESTROY ; 
 int EVT_READ ; 
 int EVT_SPEC ; 
 int EVT_WRITE ; 
 int /*<<< orphan*/  active_connections ; 
 int /*<<< orphan*/  FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct connection*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct connection*) ; 
 int FUNC7 (struct connection*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

int FUNC8 (int fd, void *data, event_t *ev) {
  struct connection *c = (struct connection *) data;
  int res;
  FUNC0 (c);

  if (ev->epoll_ready & (EPOLLHUP | EPOLLERR | EPOLLRDHUP)) {
    if (verbosity > 0) {
      FUNC1 (stderr, "socket %d: disconnected, cleaning\n", fd);
    }
    FUNC2 (c);
    FUNC5 (c, 0, sizeof(struct connection));
    ev->data = 0;
    active_connections--;
    // close (fd);
    return EVA_DESTROY;
  }

  res = FUNC7(c);
  if (res) return res;

  do {
    res = FUNC6(c);
    if (verbosity) {
      FUNC1 (stderr, "server_reader=%d, ready=%02x, state=%02x\n", res, ev->ready, ev->state);
    }
    if (res > 0 || c->wra) break;
    if (FUNC4(&c->Out)) {
      c->state = 1;
    }
    res = FUNC7(c);
  } while (!res && (ev->ready & EVT_READ) && c->state != -3); 

  FUNC3(&c->In);
  FUNC3(&c->Out);

  if (c->error == -3) {
    if (verbosity > 0) {
      FUNC1 (stderr, "socket %d: closing and cleaning\n", fd);
    }
    FUNC2 (c);
    FUNC5 (c, 0, sizeof(struct connection));
    ev->data = 0;
    active_connections--;
    // close (fd);
    return EVA_DESTROY;
  }

  return c->state == 1 && !c->wra ? EVT_WRITE | EVT_SPEC : EVT_READ | EVT_SPEC;
}