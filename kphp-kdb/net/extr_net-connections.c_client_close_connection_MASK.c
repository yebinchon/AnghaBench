#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct connection {scalar_t__ status; int generation; TYPE_4__* type; scalar_t__ flags; TYPE_3__* next; TYPE_2__* prev; struct conn_query* first_query; struct conn_target* target; } ;
struct conn_target {scalar_t__ outbound_connections; scalar_t__ min_connections; scalar_t__ next_reconnect; scalar_t__ refcnt; int /*<<< orphan*/  active_outbound_connections; } ;
struct conn_query {TYPE_1__* cq_type; } ;
struct TYPE_8__ {int (* free_buffers ) (struct connection*) ;int /*<<< orphan*/  (* crypto_free ) (struct connection*) ;} ;
struct TYPE_7__ {TYPE_2__* prev; } ;
struct TYPE_6__ {TYPE_3__* next; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* close ) (struct conn_query*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  active_outbound_connections ; 
 int /*<<< orphan*/  FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (struct conn_target*) ; 
 scalar_t__ conn_connecting ; 
 scalar_t__ conn_none ; 
 int /*<<< orphan*/  FUNC2 (struct conn_target*) ; 
 int /*<<< orphan*/  FUNC3 (struct conn_query*) ; 
 int /*<<< orphan*/  outbound_connections ; 
 scalar_t__ precise_now ; 
 int /*<<< orphan*/  FUNC4 (struct conn_query*) ; 
 int /*<<< orphan*/  FUNC5 (struct connection*) ; 
 int FUNC6 (struct connection*) ; 

int FUNC7 (struct connection *c, int who) {
  struct conn_query *q;
  struct conn_target *S = c->target;

  FUNC0 (c);

  if (c->first_query) {
    while (c->first_query != (struct conn_query *) c) {
      q = c->first_query;
      q->cq_type->close (q);
      if (c->first_query == q) {
        FUNC3 (q);
      }
    }
  }

  if (c->type->crypto_free) {
    c->type->crypto_free (c);
  }

  if (S) {
    c->next->prev = c->prev;
    c->prev->next = c->next;
    --S->outbound_connections;
    --outbound_connections;
    if (c->status != conn_connecting) {
      --S->active_outbound_connections;
      --active_outbound_connections;
    }
    if (S->outbound_connections < S->min_connections && precise_now >= S->next_reconnect && S->refcnt > 0) {
      FUNC2 (S);
      if (S->next_reconnect <= precise_now) {
        FUNC1 (S);
      }
    }
  }

  c->status = conn_none;
  c->flags = 0;
  c->generation = -1;

  return c->type->free_buffers(c);
}