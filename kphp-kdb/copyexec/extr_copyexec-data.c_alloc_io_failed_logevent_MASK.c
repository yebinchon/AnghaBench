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
struct TYPE_5__ {int result; int /*<<< orphan*/  mask; int /*<<< orphan*/  binlog_pos; } ;
typedef  TYPE_1__ transaction_t ;
struct lev_copyexec_main_transaction_status {int result; int /*<<< orphan*/  mask; int /*<<< orphan*/  binlog_pos; } ;

/* Variables and functions */
 struct lev_copyexec_main_transaction_status* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ts_io_failed ; 

__attribute__((used)) static void FUNC2 (transaction_t *T, int result) {
  if (result < 0) {
    result *= -1;
  }
  FUNC1 (T, ts_io_failed);
  struct lev_copyexec_main_transaction_status *E = FUNC0 (T);
  E->binlog_pos = T->binlog_pos;
  E->mask = T->mask;
  E->result = T->result = result;
}