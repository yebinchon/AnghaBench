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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference_iterator ;
typedef  int /*<<< orphan*/  git_refdb ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

int FUNC2(
	git_reference_iterator **out, git_repository *repo, const char *glob)
{
	git_refdb *refdb;

	if (FUNC1(&refdb, repo) < 0)
		return -1;

	return FUNC0(out, refdb, glob);
}