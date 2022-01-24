#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ temp_id; scalar_t__ status; scalar_t__ long_locked_until; int /*<<< orphan*/  long_lock_secret; scalar_t__ long_lock_cancel_timeout; int /*<<< orphan*/  long_lock_heap_pos; } ;
typedef  TYPE_1__ transaction_t ;
struct lev_money_trans_lock {scalar_t__ temp_id; scalar_t__ lock_seconds; int /*<<< orphan*/  lock_secret; scalar_t__ transaction_id; } ;

/* Variables and functions */
 scalar_t__ MAX_LOCK_SECONDS ; 
 scalar_t__ MIN_LOCK_SECONDS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 TYPE_1__* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ now ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ trs_declared ; 
 scalar_t__ trs_declared_locked ; 
 scalar_t__ trs_long_locked ; 

__attribute__((used)) static int FUNC7 (struct lev_money_trans_lock *E) {
  transaction_t *T = FUNC3 (E->transaction_id);
  FUNC0 (E->transaction_id && T);
  FUNC0 (E->temp_id == T->temp_id && E->temp_id && T == FUNC2 (E->temp_id));
  FUNC0 (T->status == trs_declared || T->status == trs_declared_locked);

  FUNC0 (!T->long_locked_until && !T->long_lock_heap_pos);
  FUNC0 (E->lock_seconds >= MIN_LOCK_SECONDS && E->lock_seconds <= MAX_LOCK_SECONDS);

  FUNC0 (FUNC1 (T) >= 0);

  FUNC4 (T);
  FUNC0 (T->status == trs_declared_locked);

  T->status = trs_long_locked;
  FUNC6 (T);
  
  T->long_locked_until = now + E->lock_seconds;
  T->long_lock_cancel_timeout = 0;
  T->long_lock_secret = E->lock_secret;

  FUNC5 (T);

  return 1;
}