#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in {int fd; int /*<<< orphan*/  out_buff; int /*<<< orphan*/  Out; int /*<<< orphan*/  in_buff; int /*<<< orphan*/  In; int /*<<< orphan*/  state; scalar_t__ generation; TYPE_2__* ev; } ;
struct sockaddr {int dummy; } ;
struct connection {int fd; int /*<<< orphan*/  out_buff; int /*<<< orphan*/  Out; int /*<<< orphan*/  in_buff; int /*<<< orphan*/  In; int /*<<< orphan*/  state; scalar_t__ generation; TYPE_2__* ev; } ;
typedef  int /*<<< orphan*/  peer ;
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_8__ {int sin_port; TYPE_1__ sin_addr; } ;
struct TYPE_7__ {TYPE_3__ peer; } ;
typedef  TYPE_2__ event_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUFF_SIZE ; 
 int /*<<< orphan*/  C_WANTRD ; 
 struct sockaddr_in* Connections ; 
 int EVA_CONTINUE ; 
 int EVT_READ ; 
 int EVT_SPEC ; 
 TYPE_2__* Events ; 
 int MAX_CONNECTIONS ; 
 int MAX_EVENTS ; 
 int FUNC0 (int,struct sockaddr*,unsigned int*) ; 
 int /*<<< orphan*/  active_connections ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ conn_generation ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr_in*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  server_read_write ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

int FUNC10 (int fd, void *data, event_t *ev) {
  char buf[32];
  struct sockaddr_in peer;
  unsigned addrlen;
  int cfd, acc = 0;
  struct connection *c;
  do {
    addrlen = sizeof(peer);
    FUNC9 (&peer, 0, sizeof(peer));
    cfd = FUNC0 (fd, (struct sockaddr *) &peer, &addrlen);
    if (cfd < 0) {
      if (!acc && verbosity > 0) {
  FUNC6 (stderr, "accept(%d) unexpectedly returns %d\n", fd, cfd);
      }
      break;
    } else acc++;
    FUNC1 (cfd < MAX_EVENTS);
    ev = Events + cfd;
    FUNC8 (&ev->peer, &peer, sizeof(peer));
    if (verbosity > 0) {
      FUNC6 (stderr, "accepted incoming connection at %s:%d, fd=%d\n", FUNC3(ev->peer.sin_addr.s_addr, buf), ev->peer.sin_port, cfd);
    }
    if (cfd >= MAX_CONNECTIONS) {
      FUNC2 (cfd);
      continue;
    }
    c = Connections + cfd;
    FUNC9 (c, 0, sizeof (struct connection));
    c->fd = cfd;
    c->ev = ev;
    c->generation = ++conn_generation;
    c->state = C_WANTRD;
    FUNC7 (&c->In, c->in_buff, BUFF_SIZE);
    FUNC7 (&c->Out, c->out_buff, BUFF_SIZE);
    FUNC5 (cfd, 0, server_read_write, c);
    FUNC4 (cfd, EVT_READ | EVT_SPEC);
    active_connections++;
  } while (1);
  return EVA_CONTINUE;
}