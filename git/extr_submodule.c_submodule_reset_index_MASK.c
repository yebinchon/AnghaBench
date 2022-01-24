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
struct child_process {int git_cmd; int no_stdin; char const* dir; int /*<<< orphan*/  args; int /*<<< orphan*/  env_array; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct child_process*) ; 

__attribute__((used)) static void FUNC8(const char *path)
{
	struct child_process cp = CHILD_PROCESS_INIT;
	FUNC6(&cp.env_array);

	cp.git_cmd = 1;
	cp.no_stdin = 1;
	cp.dir = path;

	FUNC1(&cp.args, "--super-prefix=%s%s/",
				   FUNC5(), path);
	FUNC2(&cp.args, "read-tree", "-u", "--reset", NULL);

	FUNC0(&cp.args, FUNC4());

	if (FUNC7(&cp))
		FUNC3("could not reset submodule index");
}