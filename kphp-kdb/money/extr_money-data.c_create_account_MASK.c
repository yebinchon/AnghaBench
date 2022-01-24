#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lev_money_new_acc {size_t acc_type_id; scalar_t__ currency; int comm_len; int /*<<< orphan*/  comment; int /*<<< orphan*/  withdraw_code; int /*<<< orphan*/  access_code; int /*<<< orphan*/  auth_code; int /*<<< orphan*/  ip; int /*<<< orphan*/  owner_id; int /*<<< orphan*/  acc_id; } ;
struct account {int comm_len; TYPE_1__* acc_type; int /*<<< orphan*/ * comment; int /*<<< orphan*/  withdraw_code; int /*<<< orphan*/  access_code; int /*<<< orphan*/  auth_code; int /*<<< orphan*/  ip; int /*<<< orphan*/  owner_id; int /*<<< orphan*/  acc_id; } ;
struct TYPE_2__ {scalar_t__ currency; int acc_class; } ;

/* Variables and functions */
 TYPE_1__** AccTypes ; 
 unsigned int MAX_ACCOUNT_TYPE ; 
 size_t MIN_CURRENCY_ID ; 
 int /*<<< orphan*/  FUNC0 (struct account*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * currency_accounts ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  special_accounts ; 
 int /*<<< orphan*/  tot_accounts ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 struct account* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6 (struct lev_money_new_acc *E, int flag) {
  struct account *A;

  FUNC1 ((unsigned) E->acc_type_id <= MAX_ACCOUNT_TYPE && AccTypes[E->acc_type_id]);
  FUNC1 (!FUNC2 (E->acc_type_id, E->acc_id));
  FUNC1 (E->currency == AccTypes[E->acc_type_id]->currency);

  A = FUNC5 (sizeof (struct account));
  A->acc_type = AccTypes[E->acc_type_id];
  A->acc_id = E->acc_id;

  A->owner_id = E->owner_id;
  A->ip = E->ip;
  A->auth_code = E->auth_code;

  if (flag) {
    A->access_code = E->access_code;
    A->withdraw_code = E->withdraw_code;
    if (E->comm_len) {
      A->comm_len = E->comm_len;
      FUNC1 (A->comm_len >= 0 && A->comm_len <= 4096);
      A->comment = FUNC4 (E->comm_len + 1);
      FUNC3 (A->comment, E->comment, E->comm_len + 1);
      FUNC1 (!A->comment[A->comm_len]);
    }
  }

  FUNC0 (A);

  ++tot_accounts;
  if (A->acc_type->acc_class & 4) {
    ++special_accounts;
  }

  ++currency_accounts[E->currency-MIN_CURRENCY_ID];

  return 0;
}