#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_8__ {int /*<<< orphan*/  repo; } ;
struct TYPE_9__ {TYPE_1__ object; } ;
typedef  TYPE_2__ git_commit ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*) ; 
 int FUNC1 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__ const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int) ; 

int FUNC4(
	git_commit **parent, const git_commit *commit, unsigned int n)
{
	const git_oid *parent_id;
	FUNC0(commit);

	parent_id = FUNC2(commit, n);
	if (parent_id == NULL) {
		FUNC3(GIT_ERROR_INVALID, "parent %u does not exist", n);
		return GIT_ENOTFOUND;
	}

	return FUNC1(parent, commit->object.repo, parent_id);
}