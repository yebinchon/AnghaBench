#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ metafile_len; } ;
typedef  TYPE_1__ user ;

/* Variables and functions */
 int /*<<< orphan*/  allocated_metafile_bytes ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  user_table ; 
 TYPE_1__* users ; 
 int verbosity ; 

int FUNC5 (user *u) {
  FUNC0 (u != NULL);

  int user_id = 0;

  if (verbosity > 1) {
    user_id = FUNC2 (&user_table, (int)(u - users));
  }

  if (verbosity > 2) {
    FUNC1 (stderr, "unload_user_metafile(%d)\n", user_id);
  }

  if (!u || !FUNC4 (u)) {
    if (verbosity > 1) {
      FUNC1 (stderr, "cannot unload user metafile (%d)\n", user_id);
      FUNC0 (0);
    }
    return 0;
  }

  allocated_metafile_bytes -= u->metafile_len;

  FUNC3 (u);

  if (verbosity > 2) {
    FUNC1 (stderr, "unload_user_metafile(%d) END\n", user_id);
  }

  return 1;
}