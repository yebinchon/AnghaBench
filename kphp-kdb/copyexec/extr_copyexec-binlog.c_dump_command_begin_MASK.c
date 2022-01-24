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
struct lev_copyexec_main_command_begin {int transaction_id; int command_id; int pid; char* command_size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  out ; 

void FUNC2 (struct lev_copyexec_main_command_begin *E) {
  if (FUNC0 ("LEV_COPYEXEC_MAIN_COMMAND_BEGIN")) {
    return;
  }
  FUNC1 (out, "%d\t%d\t%d\t%.*s\n", E->transaction_id, E->command_id, E->pid, E->command_size, E->data);
}