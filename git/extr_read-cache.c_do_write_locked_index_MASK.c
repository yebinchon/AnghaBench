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
struct lock_file {TYPE_2__* tempfile; } ;
struct index_state {scalar_t__ updated_skipworktree; scalar_t__ updated_workdir; } ;
struct TYPE_3__ {int /*<<< orphan*/  buf; } ;
struct TYPE_4__ {TYPE_1__ filename; } ;

/* Variables and functions */
 unsigned int COMMIT_LOCK ; 
 int FUNC0 (struct lock_file*) ; 
 int FUNC1 (struct lock_file*) ; 
 int FUNC2 (struct index_state*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct index_state *istate, struct lock_file *lock,
				 unsigned flags)
{
	int ret;

	/*
	 * TODO trace2: replace "the_repository" with the actual repo instance
	 * that is associated with the given "istate".
	 */
	FUNC4("index", "do_write_index", the_repository,
				   "%s", lock->tempfile->filename.buf);
	ret = FUNC2(istate, lock->tempfile, 0);
	FUNC5("index", "do_write_index", the_repository,
				   "%s", lock->tempfile->filename.buf);

	if (ret)
		return ret;
	if (flags & COMMIT_LOCK)
		ret = FUNC1(lock);
	else
		ret = FUNC0(lock);

	FUNC3(NULL, "post-index-change",
			istate->updated_workdir ? "1" : "0",
			istate->updated_skipworktree ? "1" : "0", NULL);
	istate->updated_workdir = 0;
	istate->updated_skipworktree = 0;

	return ret;
}