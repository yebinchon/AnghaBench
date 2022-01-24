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
typedef  scalar_t__ git_off_t ;
typedef  int /*<<< orphan*/  git_object_t ;
typedef  int /*<<< orphan*/  git_mwindow ;
struct TYPE_3__ {int /*<<< orphan*/  entry_start; int /*<<< orphan*/  off; int /*<<< orphan*/  pack; } ;
typedef  TYPE_1__ git_indexer ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_OFS_DELTA ; 
 int /*<<< orphan*/  GIT_OBJECT_REF_DELTA ; 
 scalar_t__ GIT_OID_RAWSZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC3(git_indexer *idx, git_object_t type)
{
	git_mwindow *w = NULL;

	FUNC0(type == GIT_OBJECT_REF_DELTA || type == GIT_OBJECT_OFS_DELTA);

	if (type == GIT_OBJECT_REF_DELTA) {
		idx->off += GIT_OID_RAWSZ;
	} else {
		git_off_t base_off = FUNC1(idx->pack, &w, &idx->off, type, idx->entry_start);
		FUNC2(&w);
		if (base_off < 0)
			return (int)base_off;
	}

	return 0;
}