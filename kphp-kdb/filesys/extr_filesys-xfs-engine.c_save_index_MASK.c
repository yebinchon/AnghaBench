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
struct TYPE_3__ {int /*<<< orphan*/  replica_prefix; } ;

/* Variables and functions */
 int /*<<< orphan*/  compression_level ; 
 TYPE_1__* engine_snapshot_replica ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ last_snapshot_log_pos ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int FUNC6 () ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  work_dir ; 

int FUNC9 (void) {
  char *newidxname = NULL;

  if (FUNC3 () == last_snapshot_log_pos) {
    FUNC2 ("skipping generation of new snapshot (snapshot for this position already exists)\n");
    return 0;
  }

  if (engine_snapshot_replica) {
    newidxname = FUNC1 (engine_snapshot_replica, FUNC3(), engine_snapshot_replica->replica_prefix);
  }

  if (!newidxname || newidxname[0] == '-') {
    FUNC2 ("cannot write index: cannot compute its name\n");
    FUNC0 (1);
  }
  int r = FUNC6 ();
  if (r < 0) {
    FUNC2 ("save_binlogpos returns error code %d.\n", r);
    FUNC0 (1);
  }
  r = FUNC7 (newidxname, work_dir, compression_level);
  if (r < 0) {
    FUNC2 ("tar_pack (%s, %s, %d) return error code %d.\n", newidxname, work_dir, compression_level, r);
    FUNC0 (1);
  }

  if (FUNC5 (newidxname)) {
    FUNC2 ("cannot rename new index file from %s: %m\n", newidxname);
    FUNC8 (newidxname);
    FUNC0 (1);
  }

  FUNC4 (newidxname);

  last_snapshot_log_pos = FUNC3 (); /* guard: don't save index twice for same_log_pos */
  return 0;
}