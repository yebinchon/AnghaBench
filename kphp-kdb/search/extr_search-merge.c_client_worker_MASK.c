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
struct connection {int state; int fd; int error; int /*<<< orphan*/  Out; int /*<<< orphan*/  In; struct cluster_server* serv; } ;
struct cluster_server {int port; scalar_t__ reconnect_time; scalar_t__ conn_retries; int /*<<< orphan*/  rconn; int /*<<< orphan*/  addr; } ;
struct TYPE_3__ {int epoll_ready; int ready; int state; scalar_t__ data; } ;
typedef  TYPE_1__ event_t ;

/* Variables and functions */
 int C_INCONN ; 
 int C_NORD ; 
 int C_NORW ; 
 int C_NOWR ; 
 int C_WANTRD ; 
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int EPOLLRDHUP ; 
 int EVT_READ ; 
 int EVT_SPEC ; 
 int EVT_WRITE ; 
 int /*<<< orphan*/  active_outbound_connections ; 
 int /*<<< orphan*/  FUNC0 (struct connection*) ; 
 int FUNC1 (struct connection*) ; 
 int FUNC2 (struct connection*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct connection*) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC8 (int fd, void *data, event_t *ev) {
  struct connection *c = (struct connection *) ev->data;
  struct cluster_server *S;
  int res;
  FUNC0 (c);

  if (ev->epoll_ready & (EPOLLHUP | EPOLLERR | EPOLLRDHUP)) {
    if (verbosity > 0) {
      FUNC3 (stderr, "outbound socket %d: disconnected, cleaning\n", fd);
    }

    // close (fd);
    return FUNC1 (c);
  }

  if (c->state == C_INCONN) { /* connecting... */
    if (ev->ready & EVT_WRITE) {
      if (verbosity > 0) {
  FUNC3 (stderr, "socket #%d to %s:%d becomes active\n", c->fd, FUNC6(c->serv->addr), c->serv->port);
      }
      c->state = C_WANTRD;
      S = c->serv;
      S->rconn++;
      S->conn_retries = 0;
      S->reconnect_time = 0;
      active_outbound_connections++;
      return EVT_READ | EVT_SPEC;
    }
    FUNC3 (stderr, "socket #%d: unknown event before connecting (?)\n", c->fd);
    return EVT_SPEC;
  }

  c->state &= ~C_NORW;
  if ((ev->state & EVT_READ) && !(ev->ready & EVT_READ)) { c->state |= C_NORD; }
  if ((ev->state & EVT_WRITE) && !(ev->ready & EVT_WRITE)) { c->state |= C_NOWR; }

  if (verbosity > 0) {
    FUNC3 (stderr, "outbound socket #%d: woke up, state=%d\n", c->fd, c->state);
  }

  FUNC7 (c);

  //  while (c->state > 0 && (c->state & 3) && (get_ready_bytes(&c->In) > 0 || (!(c->state & 16) && ((ev->ready & EVT_READ) || !(ev->state & EVT_READ))))) {
  res = 0;
  while (c->state > 0 && (res == 1 || ((c->state & C_WANTRD) && !(c->state & C_NORD)))) {

    res = FUNC2 (c);
    if (verbosity > 1) {
      FUNC3 (stderr, "client_reader(%d) returned %d\n", c->fd, res);
    }
    if (res < 0) {
      c->error |= 8;
    }
    FUNC4 (&c->In);
    if (res < 0 || res > 1) {
      break;
    }
  }

  if (c->error) {
    if (verbosity > 0) {
      FUNC3 (stderr, "client socket #%d: error, closing socket.\n", c->fd);
    }
    return FUNC1 (c);
  }

  FUNC4 (&c->In);
  FUNC4 (&c->Out);

  return FUNC5 (&c->Out) > 0 ? EVT_SPEC | EVT_READ | EVT_WRITE : EVT_SPEC | EVT_READ;

}