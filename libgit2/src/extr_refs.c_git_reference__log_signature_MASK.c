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
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,char*,char*) ; 

int FUNC3(git_signature **out, git_repository *repo)
{
	int error;
	git_signature *who;

	if(((error = FUNC0(&who, repo)) < 0) &&
	   ((error = FUNC1(&who, repo)) < 0) &&
	   ((error = FUNC2(&who, "unknown", "unknown")) < 0))
		return error;

	*out = who;
	return 0;
}