#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct connection {int state; scalar_t__ error; int /*<<< orphan*/  Out; int /*<<< orphan*/  In; TYPE_1__* gather; scalar_t__ Tmp; } ;
struct TYPE_5__ {int epoll_ready; int state; int ready; scalar_t__ data; } ;
typedef  TYPE_2__ event_t ;
struct TYPE_4__ {scalar_t__ timeout_time; scalar_t__ ready_num; scalar_t__ wait_num; } ;

/* Variables and functions */
 int C_INQUERY ; 
 int C_NORD ; 
 int C_NORW ; 
 int C_NOWR ; 
 int C_WANTRD ; 
 int C_WANTWR ; 
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int EPOLLRDHUP ; 
 int EVA_DESTROY ; 
 int EVT_READ ; 
 int EVT_SPEC ; 
 int EVT_WRITE ; 
 int /*<<< orphan*/  active_connections ; 
 int /*<<< orphan*/  FUNC0 (struct connection*) ; 
 int FUNC1 (struct connection*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct connection*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct connection*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ now ; 
 int FUNC8 (struct connection*) ; 
 int FUNC9 (struct connection*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

int FUNC10 (int fd, void *data, event_t *ev) {
  struct connection *c = (struct connection *) data;
  int res;
  FUNC0 (c);

  if (ev->epoll_ready & (EPOLLHUP | EPOLLERR | EPOLLRDHUP)) {
    if (verbosity > 0) {
      FUNC2 (stderr, "socket %d: disconnected, cleaning\n", fd);
    }
    FUNC4 (c);
    FUNC7 (c, 0, sizeof(struct connection));
    ev->data = 0;
    active_connections--;
    // close (fd);
    return EVA_DESTROY;
  }

  c->state &= ~C_NORW;
  if ((ev->state & EVT_READ) && !(ev->ready & EVT_READ)) { c->state |= C_NORD; }
  if ((ev->state & EVT_WRITE) && !(ev->ready & EVT_WRITE)) { c->state |= C_NOWR; }

  if (c->gather && (now >= c->gather->timeout_time || c->gather->ready_num == c->gather->wait_num)) {
    res = FUNC1 (c);
    FUNC3 (c->Tmp);
    c->Tmp = 0;
  }

  while ((((c->state & (C_WANTRD | C_INQUERY)) == C_WANTRD) && !(c->state & C_NORD)) || ((c->state & C_WANTWR) && !(c->state & C_NOWR))) {

    res = FUNC9 (c);
    if (res) { break; }

    if (!c->gather && !(c->state & C_INQUERY)) {
      res = FUNC8 (c);
      if (verbosity) {
  FUNC2 (stderr, "server_reader=%d, ready=%02x, state=%02x\n", res, ev->ready, ev->state);
      }
      if (res > 0) { break; }
    }

    if (FUNC6(&c->Out)) {
      c->state |= C_WANTWR;
    }
  }

  FUNC5(&c->In);
  FUNC5(&c->Out);

  if (c->error < 0) {
    if (verbosity > 0) {
      FUNC2 (stderr, "socket %d: closing and cleaning (error code=%ld)\n", fd, c->error);
    }
    FUNC4 (c);
    FUNC7 (c, 0, sizeof(struct connection));
    ev->data = 0;
    active_connections--;
    // close (fd);
    return EVA_DESTROY;
  }

  return (c->state & C_WANTRD ? EVT_READ : 0) | (c->state & C_WANTWR ? EVT_WRITE : 0) | EVT_SPEC;
}