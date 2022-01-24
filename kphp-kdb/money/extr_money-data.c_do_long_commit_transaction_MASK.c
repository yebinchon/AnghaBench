#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ status; int /*<<< orphan*/  temp_id; int /*<<< orphan*/  declared_date; int /*<<< orphan*/  transaction_id; } ;
typedef  TYPE_1__ transaction_t ;
struct lev_money_trans_commit {int temp_id; int /*<<< orphan*/  transaction_id; } ;
typedef  scalar_t__ money_auth_code_t ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_MONEY_TRANS_COMMIT ; 
 struct lev_money_trans_commit* FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (struct lev_money_trans_commit*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (long long) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ trs_long_locked ; 

int FUNC8 (long long transaction_id, money_auth_code_t auth_code, char buffer[256]) {
  money_auth_code_t codes[2];
  transaction_t *T = FUNC6 (transaction_id);
  if (!T) {
    return 0;
  }
  if (T->status != trs_long_locked) {
    return -1;
  }
  FUNC4 (T, codes);
  if (auth_code != codes[0]) {
    return -1;
  }
  int res = FUNC2 (T);
  if (res < 0) {
    return res;
  }
  struct lev_money_trans_commit *EC = FUNC0 (LEV_MONEY_TRANS_COMMIT, sizeof (struct lev_money_trans_commit), -2);

  EC->temp_id = -2;
  EC->transaction_id = T->transaction_id;

  FUNC1 (FUNC3 (EC) == 1);

  FUNC7 (buffer, "%16llx_%08x%08x", T->transaction_id, T->declared_date, T->temp_id);

  FUNC5 (0);

  return 1;
}