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
struct repository {int /*<<< orphan*/  index; } ;
struct commit_list {int /*<<< orphan*/  item; struct commit_list* next; } ;
struct argv_array {int /*<<< orphan*/  argv; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  RUN_GIT_CMD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC2 (struct argv_array*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct argv_array*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char const* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct repository*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct repository *r,
		      const char *strategy, size_t xopts_nr,
		      const char **xopts, struct commit_list *common,
		      const char *head_arg, struct commit_list *remotes)
{
	struct argv_array args = ARGV_ARRAY_INIT;
	int i, ret;
	struct commit_list *j;

	FUNC3(&args, "merge-%s", strategy);
	for (i = 0; i < xopts_nr; i++)
		FUNC3(&args, "--%s", xopts[i]);
	for (j = common; j; j = j->next)
		FUNC2(&args, FUNC6(j->item));
	FUNC2(&args, "--");
	FUNC2(&args, head_arg);
	for (j = remotes; j; j = j->next)
		FUNC2(&args, FUNC6(j->item));

	ret = FUNC9(args.argv, RUN_GIT_CMD);
	FUNC1(&args);

	FUNC5(r->index);
	if (FUNC7(r) < 0)
		FUNC4(FUNC0("failed to read the cache"));
	FUNC8(r->index);

	return ret;
}