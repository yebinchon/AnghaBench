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
struct child_process {char const** argv; int /*<<< orphan*/  env_array; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  no_job ; 
 int /*<<< orphan*/  parallel_next ; 
 int /*<<< orphan*/  FUNC5 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct child_process*) ; 
 scalar_t__ FUNC7 (struct child_process*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/ * task_finished ; 
 int /*<<< orphan*/  FUNC9 (int,char const**) ; 

int FUNC10(int argc, const char **argv)
{
	struct child_process proc = CHILD_PROCESS_INIT;
	int jobs;

	if (argc > 1 && !FUNC8(argv[1], "testsuite"))
		FUNC3(FUNC9(argc - 1, argv + 1));

	if (argc < 3)
		return 1;
	while (!FUNC8(argv[1], "env")) {
		if (!argv[2])
			FUNC2("env specifier without a value");
		FUNC0(&proc.env_array, argv[2]);
		argv += 2;
		argc -= 2;
	}
	if (argc < 3)
		return 1;
	proc.argv = (const char **)argv + 2;

	if (!FUNC8(argv[1], "start-command-ENOENT")) {
		if (FUNC7(&proc) < 0 && errno == ENOENT)
			return 0;
		FUNC4(stderr, "FAIL %s\n", argv[1]);
		return 1;
	}
	if (!FUNC8(argv[1], "run-command"))
		FUNC3(FUNC5(&proc));

	jobs = FUNC1(argv[2]);
	proc.argv = (const char **)argv + 3;

	if (!FUNC8(argv[1], "run-command-parallel"))
		FUNC3(FUNC6(jobs, parallel_next,
					    NULL, NULL, &proc));

	if (!FUNC8(argv[1], "run-command-abort"))
		FUNC3(FUNC6(jobs, parallel_next,
					    NULL, task_finished, &proc));

	if (!FUNC8(argv[1], "run-command-no-jobs"))
		FUNC3(FUNC6(jobs, no_job,
					    NULL, task_finished, &proc));

	FUNC4(stderr, "check usage\n");
	return 1;
}