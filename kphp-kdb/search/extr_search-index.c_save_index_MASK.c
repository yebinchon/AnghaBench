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
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 char* newidxname ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 

void FUNC21 (void) {
  if (engine_snapshot_replica) {
    newidxname = FUNC8 (engine_snapshot_replica, FUNC10(), engine_snapshot_replica->replica_prefix);
  }

  if (!newidxname || newidxname[0] == '-') {
    FUNC6 (stderr, "cannot write index: cannot compute its name\n");
    FUNC4 (1);
  }

  FUNC11 (0, newidxname, 1);

  FUNC14 (fd[0]);
  FUNC15 (fd[0]);

  FUNC16 ();

  FUNC18 ();
  FUNC20 ();
  FUNC1 ();
  FUNC2 ();
  FUNC19 ();

  FUNC5 ();

  FUNC0 (FUNC7(fd[0]) >= 0);
  FUNC0 (FUNC3 (fd[0]) >= 0);

  if (FUNC13 (newidxname)) {
    FUNC9 ("cannot rename new index file from %s: %m\n", newidxname);
    FUNC17 (newidxname);
    FUNC4 (1);
  }

  FUNC12 (newidxname);
}