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
struct TYPE_6__ {scalar_t__ status; int locked_until; struct TYPE_6__* unlock_next; } ;
typedef  TYPE_1__ transaction_t ;

/* Variables and functions */
 int DELAY_QUEUES ; 
 TYPE_1__** DelayQueues ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int dq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int) ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ trs_temp ; 
 scalar_t__ trs_temp_locked ; 

int FUNC5 (int temp_id) {
  transaction_t *T = FUNC3 (temp_id);
  if (!T) {
    return 0;
  }
  int res = FUNC1 (T);
  if (res < 0) {
    return res;
  }
  if (T->status != trs_temp) {
    return 0;
  }
  if (!T->locked_until) {
    FUNC0 (!T->unlock_next);
    T->unlock_next = DelayQueues[(dq + 15) & (DELAY_QUEUES-1)];
    DelayQueues[(dq + 15) & (DELAY_QUEUES-1)] = T;
  }
  if (T->locked_until < dq + 15) {
    T->locked_until = dq + 15;
  }

  FUNC0 (FUNC4 (T) == 1);
  T->status = trs_temp_locked;

  FUNC2 (0);

  return 2;
}