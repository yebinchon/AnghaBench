#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  transaction_id; scalar_t__ status; } ;
typedef  TYPE_1__ transaction_t ;
struct lev_copyexec_main_transaction_status {int dummy; } ;

/* Variables and functions */
 scalar_t__ LEV_COPYEXEC_MAIN_TRANSACTION_STATUS ; 
 struct lev_copyexec_main_transaction_status* FUNC0 (scalar_t__,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int const) ; 

__attribute__((used)) static struct lev_copyexec_main_transaction_status *FUNC2 (transaction_t *T) {
  const int sz = sizeof (struct lev_copyexec_main_transaction_status);
  struct lev_copyexec_main_transaction_status *E = FUNC0 (LEV_COPYEXEC_MAIN_TRANSACTION_STATUS + T->status, sz, T->transaction_id);
  char *p = (char *) E;
  FUNC1 (p + 8, 0, sz - 8);
  return E;
}