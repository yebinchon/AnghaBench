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
struct TYPE_6__ {scalar_t__ size; } ;
struct TYPE_7__ {TYPE_3__* q; int /*<<< orphan*/  id; TYPE_1__ s; } ;
typedef  TYPE_2__ subscribers ;
struct TYPE_8__ {int /*<<< orphan*/  subscr_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  h_subscribers ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  subscribers_cnt ; 
 int /*<<< orphan*/  subscribers_memory ; 

void FUNC5 (subscribers *s) {
  FUNC0 (s->s.size == 0);
  FUNC3 (&h_subscribers, &s->id);
  subscribers_cnt--;

  if (s->q != NULL) {
    s->q->subscr_cnt--;
    FUNC4 (s->q);
  }

  subscribers_memory -= FUNC2();
  FUNC1 (s, sizeof (subscribers));
  subscribers_memory += FUNC2();
}