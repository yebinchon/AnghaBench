#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct git_pack_entry {int /*<<< orphan*/  sha1; scalar_t__ offset; } ;
struct TYPE_6__ {int* id; } ;
struct entry {TYPE_2__ oid; scalar_t__ offset; scalar_t__ offset_long; } ;
typedef  scalar_t__ git_off_t ;
struct TYPE_7__ {int /*<<< orphan*/ * fanout; int /*<<< orphan*/  objects; TYPE_1__* pack; } ;
typedef  TYPE_3__ git_indexer ;
struct TYPE_5__ {int /*<<< orphan*/  idx_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_INDEXER ; 
 scalar_t__ UINT31_MAX ; 
 scalar_t__ UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct git_pack_entry*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct entry*) ; 

__attribute__((used)) static int FUNC4(git_indexer *idx, struct entry *entry, struct git_pack_entry *pentry, git_off_t entry_start)
{
	int i;

	if (entry_start > UINT31_MAX) {
		entry->offset = UINT32_MAX;
		entry->offset_long = entry_start;
	} else {
		entry->offset = (uint32_t)entry_start;
	}

	pentry->offset = entry_start;

	if (FUNC1(idx->pack->idx_cache, &pentry->sha1) ||
	    FUNC2(idx->pack->idx_cache, &pentry->sha1, pentry) < 0) {
		FUNC0(GIT_ERROR_INDEXER, "cannot insert object into pack");
		return -1;
	}

	/* Add the object to the list */
	if (FUNC3(&idx->objects, entry) < 0)
		return -1;

	for (i = entry->oid.id[0]; i < 256; ++i) {
		idx->fanout[i]++;
	}

	return 0;
}