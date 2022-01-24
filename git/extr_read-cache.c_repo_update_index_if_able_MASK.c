#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct repository {TYPE_1__* index; } ;
struct lock_file {int dummy; } ;
struct TYPE_3__ {scalar_t__ cache_changed; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_LOCK ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (struct repository*) ; 
 int /*<<< orphan*/  FUNC2 (struct lock_file*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct lock_file*,int /*<<< orphan*/ ) ; 

void FUNC4(struct repository *repo,
			       struct lock_file *lockfile)
{
	if ((repo->index->cache_changed ||
	     FUNC0(repo->index)) &&
	    FUNC1(repo))
		FUNC3(repo->index, lockfile, COMMIT_LOCK);
	else
		FUNC2(lockfile);
}