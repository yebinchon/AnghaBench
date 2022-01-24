#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct connection {int fd; scalar_t__ state; TYPE_2__* ev; struct connection* next; TYPE_1__* prev; struct cluster_server* serv; } ;
struct cluster_server {int port; scalar_t__ rconn; scalar_t__ conn; scalar_t__ reconnect_time; int /*<<< orphan*/  addr; int /*<<< orphan*/  conn_retries; struct connection* c; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {struct connection* next; } ;

/* Variables and functions */
 scalar_t__ C_INCONN ; 
 int EVA_DESTROY ; 
 int /*<<< orphan*/  active_outbound_connections ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cluster_server*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct connection*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ now ; 
 int /*<<< orphan*/  outbound_connections ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

int FUNC6 (struct connection *c) {
  struct cluster_server *S = c->serv;

  if (verbosity > 0) {
    FUNC2 (stderr, "cleaning outbound socket %d...\n", c->fd);
  }

  if (c->state == C_INCONN) {
    FUNC2 (stderr, "could not connect to %s:%d\n", FUNC4(c->serv->addr), c->serv->port);
    /* remove from servers's list ... */
  } else {
    S->rconn--;
    FUNC0 (S->rconn >= 0);
    active_outbound_connections--;
  }
  S->conn--;
  FUNC0 (S->conn >= 0);
  outbound_connections--;
  if (c->prev) { c->prev->next = c->next; }
  if (c->next) { c->next->prev = c->prev; }
  if (S->c == c) { S->c = c->next; }
  FUNC3 (c);

  if (c->ev) {
    c->ev->data = 0;
  }
  FUNC5 (c, 0, sizeof(struct connection));

  FUNC0 (S->conn >= 0);
  if (!S->conn) {
    S->c = 0;
    /* no connections left, try to reconnect */
    if (now >= S->reconnect_time) {
      S->reconnect_time = now + 1;
      S->conn_retries++;
      if (verbosity > 0) {
  FUNC2 (stderr, "trying to reconnect to %s:%d...\n", FUNC4 (S->addr), S->port);
      }
      FUNC1 (S);
    }
  }

  return EVA_DESTROY;
}