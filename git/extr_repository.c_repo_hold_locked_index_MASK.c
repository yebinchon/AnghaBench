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
struct repository {int /*<<< orphan*/  index_file; } ;
struct lock_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct lock_file*,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct repository *repo,
			   struct lock_file *lf,
			   int flags)
{
	if (!repo->index_file)
		FUNC0("the repo hasn't been setup");
	return FUNC1(lf, repo->index_file, flags);
}