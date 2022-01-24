#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct unpack_trees_options {char** msgs; int show_all_errors; TYPE_1__* unpack_rejects; int /*<<< orphan*/  msgs_to_free; } ;
struct TYPE_2__ {int strdup_strings; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 size_t ERROR_BIND_OVERLAP ; 
 size_t ERROR_NOT_UPTODATE_DIR ; 
 size_t ERROR_NOT_UPTODATE_FILE ; 
 size_t ERROR_SPARSE_NOT_UPTODATE_FILE ; 
 size_t ERROR_WOULD_LOSE_ORPHANED_OVERWRITTEN ; 
 size_t ERROR_WOULD_LOSE_ORPHANED_REMOVED ; 
 size_t ERROR_WOULD_LOSE_SUBMODULE ; 
 size_t ERROR_WOULD_LOSE_UNTRACKED_OVERWRITTEN ; 
 size_t ERROR_WOULD_LOSE_UNTRACKED_REMOVED ; 
 size_t ERROR_WOULD_OVERWRITE ; 
 char* FUNC1 (char*) ; 
 scalar_t__ advice_commit_before_merge ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

void FUNC5(struct unpack_trees_options *opts,
				  const char *cmd)
{
	int i;
	const char **msgs = opts->msgs;
	const char *msg;

	FUNC2(&opts->msgs_to_free);

	if (!FUNC4(cmd, "checkout"))
		msg = advice_commit_before_merge
		      ? FUNC1("Your local changes to the following files would be overwritten by checkout:\n%%s"
			  "Please commit your changes or stash them before you switch branches.")
		      : FUNC1("Your local changes to the following files would be overwritten by checkout:\n%%s");
	else if (!FUNC4(cmd, "merge"))
		msg = advice_commit_before_merge
		      ? FUNC1("Your local changes to the following files would be overwritten by merge:\n%%s"
			  "Please commit your changes or stash them before you merge.")
		      : FUNC1("Your local changes to the following files would be overwritten by merge:\n%%s");
	else
		msg = advice_commit_before_merge
		      ? FUNC1("Your local changes to the following files would be overwritten by %s:\n%%s"
			  "Please commit your changes or stash them before you %s.")
		      : FUNC1("Your local changes to the following files would be overwritten by %s:\n%%s");
	msgs[ERROR_WOULD_OVERWRITE] = msgs[ERROR_NOT_UPTODATE_FILE] =
		FUNC3(&opts->msgs_to_free, msg, cmd, cmd);

	msgs[ERROR_NOT_UPTODATE_DIR] =
		FUNC1("Updating the following directories would lose untracked files in them:\n%s");

	if (!FUNC4(cmd, "checkout"))
		msg = advice_commit_before_merge
		      ? FUNC1("The following untracked working tree files would be removed by checkout:\n%%s"
			  "Please move or remove them before you switch branches.")
		      : FUNC1("The following untracked working tree files would be removed by checkout:\n%%s");
	else if (!FUNC4(cmd, "merge"))
		msg = advice_commit_before_merge
		      ? FUNC1("The following untracked working tree files would be removed by merge:\n%%s"
			  "Please move or remove them before you merge.")
		      : FUNC1("The following untracked working tree files would be removed by merge:\n%%s");
	else
		msg = advice_commit_before_merge
		      ? FUNC1("The following untracked working tree files would be removed by %s:\n%%s"
			  "Please move or remove them before you %s.")
		      : FUNC1("The following untracked working tree files would be removed by %s:\n%%s");
	msgs[ERROR_WOULD_LOSE_UNTRACKED_REMOVED] =
		FUNC3(&opts->msgs_to_free, msg, cmd, cmd);

	if (!FUNC4(cmd, "checkout"))
		msg = advice_commit_before_merge
		      ? FUNC1("The following untracked working tree files would be overwritten by checkout:\n%%s"
			  "Please move or remove them before you switch branches.")
		      : FUNC1("The following untracked working tree files would be overwritten by checkout:\n%%s");
	else if (!FUNC4(cmd, "merge"))
		msg = advice_commit_before_merge
		      ? FUNC1("The following untracked working tree files would be overwritten by merge:\n%%s"
			  "Please move or remove them before you merge.")
		      : FUNC1("The following untracked working tree files would be overwritten by merge:\n%%s");
	else
		msg = advice_commit_before_merge
		      ? FUNC1("The following untracked working tree files would be overwritten by %s:\n%%s"
			  "Please move or remove them before you %s.")
		      : FUNC1("The following untracked working tree files would be overwritten by %s:\n%%s");
	msgs[ERROR_WOULD_LOSE_UNTRACKED_OVERWRITTEN] =
		FUNC3(&opts->msgs_to_free, msg, cmd, cmd);

	/*
	 * Special case: ERROR_BIND_OVERLAP refers to a pair of paths, we
	 * cannot easily display it as a list.
	 */
	msgs[ERROR_BIND_OVERLAP] = FUNC1("Entry '%s' overlaps with '%s'.  Cannot bind.");

	msgs[ERROR_SPARSE_NOT_UPTODATE_FILE] =
		FUNC1("Cannot update sparse checkout: the following entries are not up to date:\n%s");
	msgs[ERROR_WOULD_LOSE_ORPHANED_OVERWRITTEN] =
		FUNC1("The following working tree files would be overwritten by sparse checkout update:\n%s");
	msgs[ERROR_WOULD_LOSE_ORPHANED_REMOVED] =
		FUNC1("The following working tree files would be removed by sparse checkout update:\n%s");
	msgs[ERROR_WOULD_LOSE_SUBMODULE] =
		FUNC1("Cannot update submodule:\n%s");

	opts->show_all_errors = 1;
	/* rejected paths may not have a static buffer */
	for (i = 0; i < FUNC0(opts->unpack_rejects); i++)
		opts->unpack_rejects[i].strdup_strings = 1;
}