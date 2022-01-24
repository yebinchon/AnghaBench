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
struct diff_queue_struct {int /*<<< orphan*/  nr; } ;
struct diff_options {int /*<<< orphan*/  diff_path_counter; int /*<<< orphan*/  repo; } ;
struct diff_filespec {int dummy; } ;
struct argv_array {int /*<<< orphan*/  argv; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  RUN_USING_SHELL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct argv_array*,char const*,struct diff_filespec*) ; 
 int /*<<< orphan*/  FUNC2 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC3 (struct argv_array*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct argv_array*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct diff_filespec*) ; 
 struct diff_queue_struct diff_queued_diff ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(const char *pgm,
			      const char *name,
			      const char *other,
			      struct diff_filespec *one,
			      struct diff_filespec *two,
			      const char *xfrm_msg,
			      struct diff_options *o)
{
	struct argv_array argv = ARGV_ARRAY_INIT;
	struct argv_array env = ARGV_ARRAY_INIT;
	struct diff_queue_struct *q = &diff_queued_diff;

	FUNC3(&argv, pgm);
	FUNC3(&argv, name);

	if (one && two) {
		FUNC1(o->repo, &argv, name, one);
		if (!other)
			FUNC1(o->repo, &argv, name, two);
		else {
			FUNC1(o->repo, &argv, other, two);
			FUNC3(&argv, other);
			FUNC3(&argv, xfrm_msg);
		}
	}

	FUNC4(&env, "GIT_DIFF_PATH_COUNTER=%d", ++o->diff_path_counter);
	FUNC4(&env, "GIT_DIFF_PATH_TOTAL=%d", q->nr);

	FUNC6(one);
	FUNC6(two);
	if (FUNC8(argv.argv, RUN_USING_SHELL, NULL, env.argv))
		FUNC5(FUNC0("external diff died, stopping at %s"), name);

	FUNC7();
	FUNC2(&argv);
	FUNC2(&env);
}