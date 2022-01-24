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
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_2__ {int /*<<< orphan*/  parent_ids; } ;
typedef  TYPE_1__ git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  const* FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const git_oid *FUNC2(size_t curr, void *payload)
{
	const git_commit *commit_to_amend = payload;
	if (curr >= FUNC1(commit_to_amend->parent_ids))
		return NULL;
	return FUNC0(commit_to_amend->parent_ids, curr);
}