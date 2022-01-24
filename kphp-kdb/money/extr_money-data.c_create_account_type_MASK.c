#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lev_money_new_atype {int acc_type_id; scalar_t__ currency; scalar_t__ acc_class; scalar_t__ creator_id; int comm_len; int /*<<< orphan*/  comment; int /*<<< orphan*/  create_code; int /*<<< orphan*/  block_code; int /*<<< orphan*/  withdraw_code; int /*<<< orphan*/  access_code; int /*<<< orphan*/  admin_code; int /*<<< orphan*/  auth_code; int /*<<< orphan*/  ip; } ;
struct account_type {scalar_t__ currency; int acc_type_id; scalar_t__ acc_class; scalar_t__ creator_id; int comm_len; int /*<<< orphan*/ * comment; int /*<<< orphan*/  create_code; int /*<<< orphan*/  block_code; int /*<<< orphan*/  withdraw_code; int /*<<< orphan*/  access_code; int /*<<< orphan*/  admin_code; int /*<<< orphan*/  auth_code; int /*<<< orphan*/  ip; } ;

/* Variables and functions */
 struct account_type** AccTypes ; 
 int MAX_ACCOUNT_TYPE ; 
 scalar_t__ MAX_CURRENCY_ID ; 
 scalar_t__ MIN_CURRENCY_ID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tot_account_types ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 struct account_type* FUNC4 (int) ; 

__attribute__((used)) static int FUNC5 (struct lev_money_new_atype *E) {
  struct account_type *A;
  int t = E->acc_type_id;
  FUNC0 (t > 0 && t <= MAX_ACCOUNT_TYPE);
  FUNC0 (E->currency >= MIN_CURRENCY_ID && E->currency <= MAX_CURRENCY_ID);
  if (!AccTypes[t]) {
    AccTypes[t] = A = FUNC4 (sizeof (struct account_type));
    A->currency = E->currency;
    A->acc_type_id = t;
    A->acc_class = E->acc_class;
    A->creator_id = E->creator_id;
    A->ip = E->ip;
  } else {
    A = AccTypes[t];
    FUNC0 (A->currency == E->currency && A->creator_id == E->creator_id && A->acc_class == E->acc_class);
    FUNC2 (A->comment, A->comm_len + 1);
  }
  A->auth_code = E->auth_code;
  A->admin_code = E->admin_code;
  A->access_code = E->access_code;
  A->withdraw_code = E->withdraw_code;
  A->block_code = E->block_code;
  A->create_code = E->create_code;
  A->comm_len = E->comm_len;
  FUNC0 (A->comm_len >= 0 && A->comm_len <= 4096);
  A->comment = FUNC3 (E->comm_len + 1);
  FUNC1 (A->comment, E->comment, A->comm_len + 1);
  FUNC0 (!A->comment[A->comm_len]);

  ++tot_account_types;

  return 0;
}