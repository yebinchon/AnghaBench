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
struct lev_copyexec_main_transaction_status {int type; int transaction_id; int /*<<< orphan*/  st_ino; int /*<<< orphan*/  st_dev; int /*<<< orphan*/  result; int /*<<< orphan*/  creation_time; int /*<<< orphan*/  pid; int /*<<< orphan*/  mask; int /*<<< orphan*/  binlog_pos; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  out ; 

void FUNC4 (struct lev_copyexec_main_transaction_status *E) {
  int status = E->type & 255;
  if (FUNC0 ("LEV_COPYEXEC_MAIN_TRANSACTION_STATUS")) {
    return;
  }
  FUNC2 (E->type);
  FUNC3 (out, "\t%d\t%d\t0x%x\t%d\t%d\t", E->transaction_id, E->binlog_pos, E->mask, E->pid, E->creation_time);
  FUNC1 (status, E->result);
  FUNC3 (out, "\t%d\t%d\n", E->st_dev, E->st_ino);
}