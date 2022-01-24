#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ status; int long_lock_heap_pos; scalar_t__ temp_id; scalar_t__ long_locked_until; } ;
typedef  TYPE_1__ transaction_t ;
struct lev_money_trans_cancel {scalar_t__ temp_id; scalar_t__ transaction_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cancelled_long_transactions ; 
 int /*<<< orphan*/  cancelled_transactions ; 
 int /*<<< orphan*/  expired_long_transactions ; 
 TYPE_1__* FUNC1 (int) ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 scalar_t__ now ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ trs_cancelled ; 
 scalar_t__ trs_declared ; 
 scalar_t__ trs_declared_locked ; 
 scalar_t__ trs_long_locked ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6 (struct lev_money_trans_cancel *E) {
  transaction_t *T = FUNC2 (E->transaction_id);
  FUNC0 (E->transaction_id && T);
  if (T->status == trs_long_locked) {
    FUNC0 (E->temp_id < 0 && E->temp_id >= -3 && !FUNC1 (E->temp_id));
    FUNC0 (T->long_lock_heap_pos && T->long_locked_until);
    FUNC3 (T);
    T->long_lock_heap_pos = E->temp_id;
    T->status = trs_declared_locked;
  } else {
    FUNC0 (E->temp_id == T->temp_id && E->temp_id > 0);
    FUNC0 (T == FUNC1 (E->temp_id));
    FUNC0 (T->status == trs_declared || T->status == trs_declared_locked);
    FUNC0 (!T->long_lock_heap_pos && !T->long_locked_until);
  }
  T->long_locked_until = now;
  FUNC5 (T);

  T->status = trs_cancelled;
  if (E->temp_id > 0) {
    FUNC4 (T);
  } else if (E->temp_id == -3) {
    expired_long_transactions++;
  } else {
    cancelled_long_transactions++;
  }
  cancelled_transactions++;

  return 1;
}