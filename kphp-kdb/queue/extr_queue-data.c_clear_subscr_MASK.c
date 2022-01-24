#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* subs; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ queue ;
struct TYPE_6__ {scalar_t__ size; int /*<<< orphan*/  root; } ;

/* Variables and functions */
 scalar_t__ MAX_DIFF ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  to_del ; 
 int /*<<< orphan*/  to_del_n ; 
 int /*<<< orphan*/  to_del_overflow ; 
 scalar_t__ treap_cnt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void FUNC4 (queue *q) {
  FUNC0 ("clear_subscr: (q = %p), (qname = %s)\n", q, q->name);
  if (-q->subs->size > MAX_DIFF) {
    to_del_overflow += -q->subs->size - MAX_DIFF;
  }
  to_del_n = FUNC2 (q->subs->root, to_del, MAX_DIFF);
  FUNC1 (q->id, NULL, to_del, to_del_n, 0, 0);

  treap_cnt += q->subs->size;
  FUNC3 (q->subs);
  treap_cnt -= q->subs->size;
}