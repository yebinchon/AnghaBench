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
struct lev_filesys_xfs_transaction {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ pending_saving_binlogpos_logpos ; 
 int /*<<< orphan*/  tmp_dir ; 
 scalar_t__ transaction_file_no ; 
 int /*<<< orphan*/  transaction_id ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6 (struct lev_filesys_xfs_transaction *E) {
  pending_saving_binlogpos_logpos = 0;
  FUNC5 (1, "Begin transaction %d.\n", E->id);
  int r = 0;
  FUNC4 (1);
  FUNC0 (tmp_dir);
  r = FUNC3 (tmp_dir, 0777);
  if (r < 0) {
    FUNC2 ("mkdir (%s) fail. %m\n", tmp_dir);
    FUNC1 (1);
  }
  transaction_id = E->id;
  transaction_file_no = 0;
}