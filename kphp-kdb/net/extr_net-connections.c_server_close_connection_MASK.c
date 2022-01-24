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
struct connection {scalar_t__ status; int generation; scalar_t__ basic_type; TYPE_4__* type; scalar_t__ flags; TYPE_3__* target; TYPE_2__* next; TYPE_2__* prev; struct conn_query* first_query; } ;
struct conn_query {TYPE_1__* cq_type; } ;
struct TYPE_8__ {int (* free_buffers ) (struct connection*) ;int /*<<< orphan*/  (* crypto_free ) (struct connection*) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  active_outbound_connections; int /*<<< orphan*/  outbound_connections; } ;
struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* prev; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* close ) (struct conn_query*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  active_outbound_connections ; 
 int /*<<< orphan*/  FUNC0 (struct connection*) ; 
 scalar_t__ conn_connecting ; 
 scalar_t__ conn_none ; 
 scalar_t__ ct_listen ; 
 int /*<<< orphan*/  FUNC1 (struct conn_query*) ; 
 int /*<<< orphan*/  outbound_connections ; 
 int /*<<< orphan*/  FUNC2 (struct conn_query*) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*) ; 
 int FUNC4 (struct connection*) ; 

int FUNC5 (struct connection *c, int who) {
  struct conn_query *q;

  FUNC0 (c);

  if (c->first_query) {
    while (c->first_query != (struct conn_query *) c) {
      q = c->first_query;
      q->cq_type->close (q);
      if (c->first_query == q) {
        FUNC1 (q);
      }
    }
  }

  if (c->type->crypto_free) {
    c->type->crypto_free (c);
  }

  if (c->target || c->next) {
    c->next->prev = c->prev;
    c->prev->next = c->next;
    c->prev = c->next = 0;
  }

  if (c->target) {
    --c->target->outbound_connections;
    --outbound_connections;
    if (c->status != conn_connecting) {
      --c->target->active_outbound_connections;
      --active_outbound_connections;
    }
  }

  c->status = conn_none;
  c->flags = 0;
  c->generation = -1;

  if (c->basic_type == ct_listen) {
    return 0;
  }

  return c->type->free_buffers(c);
}