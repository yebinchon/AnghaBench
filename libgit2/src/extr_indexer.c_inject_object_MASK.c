#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uInt ;
struct git_pack_entry {long crc; int /*<<< orphan*/  oid; int /*<<< orphan*/  sha1; } ;
struct entry {long crc; int /*<<< orphan*/  oid; int /*<<< orphan*/  sha1; } ;
typedef  unsigned char git_oid ;
typedef  size_t git_off_t ;
typedef  int /*<<< orphan*/  git_odb_object ;
struct TYPE_16__ {size_t off; TYPE_3__* pack; int /*<<< orphan*/  odb; } ;
typedef  TYPE_4__ git_indexer ;
struct TYPE_17__ {unsigned char* ptr; size_t size; } ;
typedef  TYPE_5__ git_buf ;
struct TYPE_14__ {size_t size; } ;
struct TYPE_15__ {TYPE_2__ mwf; } ;
struct TYPE_13__ {int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 TYPE_5__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct git_pack_entry*) ; 
 int /*<<< orphan*/  GIT_ERROR_INDEXER ; 
 size_t GIT_OID_RAWSZ ; 
 unsigned char* Z_NULL ; 
 int FUNC1 (TYPE_4__*,unsigned char*,size_t) ; 
 void* FUNC2 (long,unsigned char*,int /*<<< orphan*/ ) ; 
 struct git_pack_entry* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct git_pack_entry*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned char*) ; 
 size_t FUNC13 (unsigned char*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_5__*,void const*,size_t) ; 
 long FUNC15 (void*) ; 
 int FUNC16 (TYPE_4__*,struct git_pack_entry*,struct git_pack_entry*,size_t) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC18(git_indexer *idx, git_oid *id)
{
	git_odb_object *obj;
	struct entry *entry;
	struct git_pack_entry *pentry = NULL;
	git_oid foo = {{0}};
	unsigned char hdr[64];
	git_buf buf = GIT_BUF_INIT;
	git_off_t entry_start;
	const void *data;
	size_t len, hdr_len;
	int error;

	FUNC17(idx);
	entry_start = idx->pack->mwf.size;

	if (FUNC11(&obj, idx->odb, id) < 0) {
		FUNC6(GIT_ERROR_INDEXER, "missing delta bases");
		return -1;
	}

	data = FUNC7(obj);
	len = FUNC9(obj);

	entry = FUNC3(1, sizeof(*entry));
	FUNC0(entry);

	entry->crc = FUNC2(0L, Z_NULL, 0);

	/* Write out the object header */
	hdr_len = FUNC13(hdr, len, FUNC10(obj));
	if ((error = FUNC1(idx, hdr, hdr_len)) < 0)
		goto cleanup;

	idx->pack->mwf.size += hdr_len;
	entry->crc = FUNC2(entry->crc, hdr, (uInt)hdr_len);

	if ((error = FUNC14(&buf, data, len)) < 0)
		goto cleanup;

	/* And then the compressed object */
	if ((error = FUNC1(idx, buf.ptr, buf.size)) < 0)
		goto cleanup;

	idx->pack->mwf.size += buf.size;
	entry->crc = FUNC15(FUNC2(entry->crc, (unsigned char *)buf.ptr, (uInt)buf.size));
	FUNC5(&buf);

	/* Write a fake trailer so the pack functions play ball */

	if ((error = FUNC1(idx, &foo, GIT_OID_RAWSZ)) < 0)
		goto cleanup;

	idx->pack->mwf.size += GIT_OID_RAWSZ;

	pentry = FUNC3(1, sizeof(struct git_pack_entry));
	FUNC0(pentry);

	FUNC12(&pentry->sha1, id);
	FUNC12(&entry->oid, id);
	idx->off = entry_start + hdr_len + len;

	error = FUNC16(idx, entry, pentry, entry_start);

cleanup:
	if (error) {
		FUNC4(entry);
		FUNC4(pentry);
	}

	FUNC8(obj);
	return error;
}