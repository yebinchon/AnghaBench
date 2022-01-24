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
struct TYPE_3__ {scalar_t__ wakeup_time; int /*<<< orphan*/  wakeup; scalar_t__ h_idx; } ;
struct conn_query {TYPE_1__ timer; TYPE_2__* requester; int /*<<< orphan*/  req_generation; struct conn_query* next; struct conn_query* prev; } ;
struct TYPE_4__ {int /*<<< orphan*/  pending_queries; int /*<<< orphan*/  generation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  conn_event_wakeup_gateway ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

int FUNC2 (struct conn_query *q, struct conn_query *h) {
  q->prev = h;
  q->next = h->next;
  h->next->prev = q;
  h->next = q;
  FUNC0 (q->requester);
  q->req_generation = q->requester->generation;
  q->requester->pending_queries++;
  q->timer.h_idx = 0;
  q->timer.wakeup = conn_event_wakeup_gateway;
  if (q->timer.wakeup_time > 0) {
    FUNC1 (&q->timer);
  }
  return 0;
}