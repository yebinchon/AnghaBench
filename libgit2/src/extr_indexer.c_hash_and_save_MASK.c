#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct git_pack_entry {int /*<<< orphan*/  crc; int /*<<< orphan*/  oid; int /*<<< orphan*/  sha1; } ;
struct entry {int /*<<< orphan*/  crc; int /*<<< orphan*/  oid; int /*<<< orphan*/  sha1; } ;
struct TYPE_9__ {struct git_pack_entry* data; } ;
typedef  TYPE_2__ git_rawobj ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  scalar_t__ git_off_t ;
struct TYPE_10__ {TYPE_1__* pack; scalar_t__ off; } ;
typedef  TYPE_3__ git_indexer ;
struct TYPE_8__ {int /*<<< orphan*/  mwf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct git_pack_entry*) ; 
 int /*<<< orphan*/  GIT_ERROR_INDEXER ; 
 int /*<<< orphan*/  Z_NULL ; 
 int /*<<< orphan*/  FUNC1 (long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 struct git_pack_entry* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct git_pack_entry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_3__*,struct git_pack_entry*,struct git_pack_entry*,scalar_t__) ; 

__attribute__((used)) static int FUNC9(git_indexer *idx, git_rawobj *obj, git_off_t entry_start)
{
	git_oid oid;
	size_t entry_size;
	struct entry *entry;
	struct git_pack_entry *pentry = NULL;

	entry = FUNC3(1, sizeof(*entry));
	FUNC0(entry);

	if (FUNC6(&oid, obj) < 0) {
		FUNC5(GIT_ERROR_INDEXER, "failed to hash object");
		goto on_error;
	}

	pentry = FUNC3(1, sizeof(struct git_pack_entry));
	FUNC0(pentry);

	FUNC7(&pentry->sha1, &oid);
	FUNC7(&entry->oid, &oid);
	entry->crc = FUNC1(0L, Z_NULL, 0);

	entry_size = (size_t)(idx->off - entry_start);
	if (FUNC2(&entry->crc, &idx->pack->mwf, entry_start, entry_size) < 0)
		goto on_error;

	return FUNC8(idx, entry, pentry, entry_start);

on_error:
	FUNC4(pentry);
	FUNC4(entry);
	FUNC4(obj->data);
	return -1;
}