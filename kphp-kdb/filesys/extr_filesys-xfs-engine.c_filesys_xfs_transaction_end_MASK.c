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
struct lev_filesys_xfs_transaction {scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ last_closed_transaction_id ; 
 int /*<<< orphan*/  last_closed_transaction_time ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  now ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ pending_saving_binlogpos_logpos ; 
 int /*<<< orphan*/  tmp_dir ; 
 scalar_t__ transaction_id ; 

__attribute__((used)) static void FUNC4 (struct lev_filesys_xfs_transaction *E) {
  FUNC0 (transaction_id == E->id);
  FUNC3 ();
  FUNC1 (tmp_dir);
  pending_saving_binlogpos_logpos = FUNC2 () + 8;
  last_closed_transaction_id = transaction_id;
  last_closed_transaction_time = now;
}