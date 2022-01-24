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
struct lock_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_LOCK ; 
 int /*<<< orphan*/  LOCK_DIE_ON_ERROR ; 
 struct lock_file LOCK_INIT ; 
 int /*<<< orphan*/ * active_cache_tree ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct lock_file*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  the_index ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct lock_file*,int /*<<< orphan*/ ) ; 

int FUNC5(int ac, const char **av)
{
	struct lock_file index_lock = LOCK_INIT;

	FUNC3();
	FUNC1(&index_lock, LOCK_DIE_ON_ERROR);
	if (FUNC2() < 0)
		FUNC0("unable to read index file");
	active_cache_tree = NULL;
	if (FUNC4(&the_index, &index_lock, COMMIT_LOCK))
		FUNC0("unable to write index file");
	return 0;
}