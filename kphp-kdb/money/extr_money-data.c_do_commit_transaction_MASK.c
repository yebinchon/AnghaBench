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
struct TYPE_6__ {scalar_t__ status; long long transaction_id; int /*<<< orphan*/  temp_id; int /*<<< orphan*/  declared_date; } ;
typedef  TYPE_1__ transaction_t ;
struct lev_money_trans_commit {long long transaction_id; int /*<<< orphan*/  temp_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_MONEY_TRANS_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct lev_money_trans_commit* FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (struct lev_money_trans_commit*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 long long FUNC7 () ; 
 TYPE_1__* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ trs_temp ; 
 scalar_t__ trs_temp_locked ; 

int FUNC10 (int temp_id, long long *transaction_id, char buffer[256]) {
  transaction_t *T = FUNC8 (temp_id);
  *transaction_id = 0;
  *buffer = 0;
  if (!T) {
    return 0;
  }
  int res = FUNC3 (T);
  if (res < 0) {
    return res;
  }
  if (T->status != trs_temp && T->status != trs_temp_locked) {
    return -1;
  }
  if (!T->transaction_id) {
    T->transaction_id = FUNC7();
  }

  FUNC2 (FUNC5 (T) == 1);

  struct lev_money_trans_commit *EC = FUNC1 (LEV_MONEY_TRANS_COMMIT, sizeof (struct lev_money_trans_commit), temp_id);

  EC->temp_id = T->temp_id;
  EC->transaction_id = T->transaction_id;

  FUNC2 (FUNC4 (EC) == 1);

  FUNC0 (T);

  *transaction_id = T->transaction_id;

  FUNC9 (buffer, "%16llx_%08x%08x", T->transaction_id, T->declared_date, T->temp_id);

  FUNC6 (0);

  return 1;
}