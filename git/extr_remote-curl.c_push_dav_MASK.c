#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct child_process {int git_cmd; int /*<<< orphan*/  args; } ;
struct TYPE_4__ {int verbosity; scalar_t__ dry_run; } ;
struct TYPE_3__ {char const* buf; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__ options ; 
 scalar_t__ FUNC3 (struct child_process*) ; 
 TYPE_1__ url ; 

__attribute__((used)) static int FUNC4(int nr_spec, const char **specs)
{
	struct child_process child = CHILD_PROCESS_INIT;
	size_t i;

	child.git_cmd = 1;
	FUNC1(&child.args, "http-push");
	FUNC1(&child.args, "--helper-status");
	if (options.dry_run)
		FUNC1(&child.args, "--dry-run");
	if (options.verbosity > 1)
		FUNC1(&child.args, "--verbose");
	FUNC1(&child.args, url.buf);
	for (i = 0; i < nr_spec; i++)
		FUNC1(&child.args, specs[i]);

	if (FUNC3(&child))
		FUNC2(FUNC0("git-http-push failed"));
	return 0;
}