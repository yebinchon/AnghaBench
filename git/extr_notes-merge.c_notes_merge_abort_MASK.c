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
struct strbuf {char* buf; } ;
struct notes_merge_options {int verbosity; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOTES_MERGE_WORKTREE ; 
 int /*<<< orphan*/  REMOVE_DIR_KEEP_TOPLEVEL ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

int FUNC4(struct notes_merge_options *o)
{
	/*
	 * Remove all files within .git/NOTES_MERGE_WORKTREE. We do not remove
	 * the .git/NOTES_MERGE_WORKTREE directory itself, since it might be
	 * the current working directory of the user.
	 */
	struct strbuf buf = STRBUF_INIT;
	int ret;

	FUNC0(&buf, NOTES_MERGE_WORKTREE);
	if (o->verbosity >= 3)
		FUNC1("Removing notes merge worktree at %s/*\n", buf.buf);
	ret = FUNC2(&buf, REMOVE_DIR_KEEP_TOPLEVEL);
	FUNC3(&buf);
	return ret;
}