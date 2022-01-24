#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  st_ino; int /*<<< orphan*/  st_dev; int /*<<< orphan*/  result; int /*<<< orphan*/  creation_time; int /*<<< orphan*/  pid; int /*<<< orphan*/  mask; int /*<<< orphan*/  binlog_pos; } ;
typedef  TYPE_1__ transaction_t ;
struct lev_copyexec_main_transaction_status {int type; int /*<<< orphan*/  st_ino; int /*<<< orphan*/  st_dev; int /*<<< orphan*/  result; int /*<<< orphan*/  creation_time; int /*<<< orphan*/  pid; int /*<<< orphan*/  mask; int /*<<< orphan*/  binlog_pos; int /*<<< orphan*/  transaction_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,int) ; 

void FUNC4 (struct lev_copyexec_main_transaction_status *E) {
  int status = E->type & 0xff;
  FUNC3 (3, "tr%d set status %d.\n", E->transaction_id, (int) status);
  transaction_t *T = FUNC1 (E->transaction_id, 1);
  FUNC0 (T != NULL);
  FUNC2 (T, status);
  T->binlog_pos = E->binlog_pos;
  T->mask = E->mask;
  T->pid = E->pid;
  T->creation_time = E->creation_time;
  T->result = E->result;
  T->st_dev = E->st_dev;
  T->st_ino = E->st_ino;
}