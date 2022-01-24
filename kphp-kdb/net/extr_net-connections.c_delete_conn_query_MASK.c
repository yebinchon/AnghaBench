#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ h_idx; } ;
struct conn_query {scalar_t__ req_generation; TYPE_5__ timer; TYPE_4__* outbound; TYPE_3__* requester; TYPE_2__* next; TYPE_1__* prev; } ;
struct TYPE_12__ {int /*<<< orphan*/  in_queue; } ;
struct TYPE_10__ {int fd; } ;
struct TYPE_9__ {scalar_t__ generation; TYPE_6__* ev; int /*<<< orphan*/  fd; int /*<<< orphan*/  pending_queries; } ;
struct TYPE_8__ {TYPE_1__* prev; } ;
struct TYPE_7__ {TYPE_2__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 

int FUNC3 (struct conn_query *q) {
  FUNC2 (2, "delete_conn_query (%p)\n", q);
  q->next->prev = q->prev;
  q->prev->next = q->next;
  if (q->requester && q->requester->generation == q->req_generation) {
    if (!--q->requester->pending_queries) {
      /* wake up master */
      FUNC2 (2, "socket %d was the last one, waking master %d\n", q->outbound ? q->outbound->fd : -1, q->requester->fd);
      if (!q->requester->ev->in_queue) {
	FUNC0 (q->requester->ev);
      }
    }
  }
  q->requester = 0;
  q->outbound = 0;
  if (q->timer.h_idx) {
    FUNC1 (&q->timer);
  }
  return 0;
}