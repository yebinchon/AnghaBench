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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* engine_snapshot_replica ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * fd ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 

void FUNC20 (void) {
  char *newidxname = NULL;
  if (engine_snapshot_replica) {
    newidxname = FUNC7 (engine_snapshot_replica, FUNC9(), engine_snapshot_replica->replica_prefix);
  }

  if (!newidxname || newidxname[0] == '-') {
    FUNC5 (stderr, "cannot write index: cannot compute its name\n");
    FUNC4 (1);
  }

  FUNC10 (0, newidxname, 1);

  FUNC13 (fd[0]);
  FUNC14 (fd[0]);

  FUNC15 ();

  FUNC17 ();
  FUNC19 ();
  FUNC1 ();
  FUNC2 ();
  FUNC18 ();

  FUNC0 (FUNC6(fd[0]) >= 0);
  FUNC0 (FUNC3 (fd[0]) >= 0);

  if (FUNC12 (newidxname)) {
    FUNC8 ("cannot rename new index file from %s: %m\n", newidxname);
    FUNC16 (newidxname);
    FUNC4 (1);
  }

  FUNC11 (newidxname);
}