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
struct lev_copyexec_main_transaction_err {int transaction_id; char* error_msg_size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  out ; 

void FUNC2 (struct lev_copyexec_main_transaction_err *E) {
  if (FUNC0 ("LEV_COPYEXEC_MAIN_TRANSACTION_ERR")) {
    return;
  }
  FUNC1 (out, "%d\t%.*s\n", E->transaction_id, E->error_msg_size, E->data);
}