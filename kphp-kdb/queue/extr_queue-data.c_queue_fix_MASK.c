#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int ref_cnt; scalar_t__ keys_cnt; scalar_t__ subscr_cnt; int /*<<< orphan*/ * ev_last; TYPE_2__* ev_first; } ;
typedef  TYPE_1__ queue ;
struct TYPE_8__ {scalar_t__ ref_cnt; struct TYPE_8__* next; } ;
typedef  TYPE_2__ event ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int my_verbosity ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC4 (queue *q) {
  if (my_verbosity > 1) {
    FUNC2 (stderr, "in queue fix %p %d\n", q, q->ref_cnt);
  }
  if (q->ref_cnt == 0) {
    event *e = q->ev_first;
    while (e != NULL && e->ref_cnt == 0) {
      q->ev_first = e->next;

      FUNC1 (e);

      e = q->ev_first;
    }
    if (e == NULL) {
      q->ev_last = NULL;
    }
  }

  // TODO: last condition should be enough
  if (/*q->ref_cnt == 0 && q->ev_first == NULL &&*/ q->keys_cnt == 0) {
    FUNC3 (q);
  }

  if (/*q->ref_cnt == 0 && q->ev_first == NULL &&*/ q->keys_cnt == 0 && q->subscr_cnt == 0) {
    FUNC0 (q);
  }
  if (my_verbosity > 1) {
    FUNC2 (stderr, "exit queue fix\n");
  }
}