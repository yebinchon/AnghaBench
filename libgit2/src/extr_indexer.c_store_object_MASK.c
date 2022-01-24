#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct git_pack_entry {int /*<<< orphan*/  crc; int /*<<< orphan*/  oid; int /*<<< orphan*/  sha1; scalar_t__ offset; scalar_t__ offset_long; } ;
struct entry {int /*<<< orphan*/  crc; int /*<<< orphan*/  oid; int /*<<< orphan*/  sha1; scalar_t__ offset; scalar_t__ offset_long; } ;
struct TYPE_13__ {int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ git_rawobj ;
struct TYPE_14__ {int* id; } ;
typedef  TYPE_4__ git_oid ;
typedef  scalar_t__ git_off_t ;
struct TYPE_11__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
struct TYPE_15__ {scalar_t__ entry_start; scalar_t__ off; int /*<<< orphan*/ * fanout; int /*<<< orphan*/  objects; TYPE_2__* pack; int /*<<< orphan*/  entry_type; TYPE_1__ entry_data; scalar_t__ do_verify; int /*<<< orphan*/  hash_ctx; } ;
typedef  TYPE_5__ git_indexer ;
struct TYPE_12__ {int /*<<< orphan*/  mwf; int /*<<< orphan*/  idx_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct git_pack_entry*) ; 
 int /*<<< orphan*/  GIT_ERROR_INDEXER ; 
 scalar_t__ UINT31_MAX ; 
 scalar_t__ UINT32_MAX ; 
 int FUNC1 (TYPE_5__*,TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 struct git_pack_entry* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct git_pack_entry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct git_pack_entry*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,struct git_pack_entry*) ; 

__attribute__((used)) static int FUNC13(git_indexer *idx)
{
	int i, error;
	git_oid oid;
	struct entry *entry;
	git_off_t entry_size;
	struct git_pack_entry *pentry;
	git_off_t entry_start = idx->entry_start;

	entry = FUNC3(1, sizeof(*entry));
	FUNC0(entry);

	pentry = FUNC3(1, sizeof(struct git_pack_entry));
	FUNC0(pentry);

	FUNC7(&oid, &idx->hash_ctx);
	entry_size = idx->off - entry_start;
	if (entry_start > UINT31_MAX) {
		entry->offset = UINT32_MAX;
		entry->offset_long = entry_start;
	} else {
		entry->offset = (uint32_t)entry_start;
	}

	if (idx->do_verify) {
		git_rawobj rawobj = {
		    idx->entry_data.ptr,
		    idx->entry_data.size,
		    idx->entry_type
		};

		if ((error = FUNC1(idx, &rawobj)) < 0)
			goto on_error;
	}

	FUNC8(&pentry->sha1, &oid);
	pentry->offset = entry_start;

	if (FUNC10(idx->pack->idx_cache, &pentry->sha1)) {
		FUNC5(GIT_ERROR_INDEXER, "duplicate object %s found in pack", FUNC9(&pentry->sha1));
		FUNC4(pentry);
		goto on_error;
	}

	if ((error = FUNC11(idx->pack->idx_cache, &pentry->sha1, pentry)) < 0) {
		FUNC4(pentry);
		FUNC6();
		goto on_error;
	}

	FUNC8(&entry->oid, &oid);

	if (FUNC2(&entry->crc, &idx->pack->mwf, entry_start, entry_size) < 0)
		goto on_error;

	/* Add the object to the list */
	if (FUNC12(&idx->objects, entry) < 0)
		goto on_error;

	for (i = oid.id[0]; i < 256; ++i) {
		idx->fanout[i]++;
	}

	return 0;

on_error:
	FUNC4(entry);

	return -1;
}