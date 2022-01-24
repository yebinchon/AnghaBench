#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  treap ;
struct TYPE_6__ {scalar_t__ keys_cnt; int /*<<< orphan*/ * subs; } ;
typedef  TYPE_1__ queue ;
typedef  int /*<<< orphan*/  ll ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  queues_memory ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

queue *FUNC8 (ll id, int force) {
//  dbg ("get news_queue %lld %d\n", id, force);
  queue *q;

  if (!FUNC0 (id)) {
    q = FUNC5 (id);
    if (q == NULL) {
      return NULL;
    }
  } else {
    q = FUNC4 (FUNC3 (id), force);
  }
  if (q != NULL) {
    //IMPORTANT: we mustn't add something to q->subs if nobody listens to it i.e. if keys_cnt == 0
    if (q->keys_cnt == 0 && !force) {
      return NULL;
    }
    if (q->subs == NULL) {
      //TODO
      queues_memory -= FUNC1();
      q->subs = FUNC2 (sizeof (treap));
      queues_memory += FUNC1();
      FUNC6 (q->subs);
    }

    if (force) {
      FUNC7 (q);
    }
  }

  return q;
}