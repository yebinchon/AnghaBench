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
struct lev_copyexec_result_data {int result; int /*<<< orphan*/  binlog_pos; int /*<<< orphan*/  transaction_id; int /*<<< orphan*/  random_tag; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  out ; 

__attribute__((used)) static void FUNC4 (struct lev_copyexec_result_data *E) {
  if (FUNC0 ("LEV_COPYEXEC_RESULT_DATA")) {
    return;
  }
  FUNC3 (out, "0x%x\t%d\t", E->random_tag, E->transaction_id);
  int status = E->result >> 28, result = E->result & 0x0fffffff;
  FUNC2 (status);
  FUNC3 (out, "\t");
  FUNC1 (status, result);
  FUNC3 (out, "\t%d\n", E->binlog_pos);
}