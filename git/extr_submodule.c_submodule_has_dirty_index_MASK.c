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
struct submodule {int /*<<< orphan*/  path; } ;
struct child_process {int git_cmd; int no_stdin; int no_stdout; int /*<<< orphan*/  dir; int /*<<< orphan*/  args; int /*<<< orphan*/  env_array; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct child_process*) ; 

__attribute__((used)) static int FUNC5(const struct submodule *sub)
{
	struct child_process cp = CHILD_PROCESS_INIT;

	FUNC3(&cp.env_array);

	cp.git_cmd = 1;
	FUNC0(&cp.args, "diff-index", "--quiet",
				   "--cached", "HEAD", NULL);
	cp.no_stdin = 1;
	cp.no_stdout = 1;
	cp.dir = sub->path;
	if (FUNC4(&cp))
		FUNC1("could not recurse into submodule '%s'", sub->path);

	return FUNC2(&cp);
}