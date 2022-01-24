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
struct lev_copyexec_aux_transaction_cmd_wait {int transaction_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_COPYEXEC_AUX_TRANSACTION_CMD_WAIT ; 
 int /*<<< orphan*/  T ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 struct lev_copyexec_aux_transaction_cmd_wait* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int transactions ; 

__attribute__((used)) static int FUNC2 (int transaction_id) {
  if (transaction_id < 1) {
    FUNC0 ("wait_transaction: X < 1\n");
    return -1;
  }
  if (transaction_id >= transactions + 1) {
    FUNC0 ("wait_transaction: X >= current transaction id (X = %d, transaction_id = %d)\n", transaction_id, transactions + 1);
    return -2;
  }
  struct lev_copyexec_aux_transaction_cmd_wait *E = FUNC1 (&T, LEV_COPYEXEC_AUX_TRANSACTION_CMD_WAIT, sizeof (struct lev_copyexec_aux_transaction_cmd_wait));
  E->transaction_id = transaction_id;
  return 0;
}