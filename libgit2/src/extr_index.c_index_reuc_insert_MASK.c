#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * path; } ;
typedef  TYPE_1__ git_index_reuc_entry ;
struct TYPE_7__ {int dirty; int /*<<< orphan*/  reuc; } ;
typedef  TYPE_2__ git_index ;

/* Variables and functions */
 int GIT_EEXISTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  index_reuc_on_dup ; 

__attribute__((used)) static int FUNC3(
	git_index *index,
	git_index_reuc_entry *reuc)
{
	int res;

	FUNC0(index && reuc && reuc->path != NULL);
	FUNC0(FUNC2(&index->reuc));

	res = FUNC1(&index->reuc, reuc, &index_reuc_on_dup);
	index->dirty = 1;

	return res == GIT_EEXISTS ? 0 : res;
}