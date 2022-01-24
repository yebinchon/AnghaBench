#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct index_header {void* entry_count; void* version; void* signature; } ;
struct TYPE_20__ {struct index_header* id; } ;
typedef  TYPE_4__ git_oid ;
struct TYPE_19__ {scalar_t__ length; } ;
struct TYPE_18__ {scalar_t__ length; } ;
struct TYPE_17__ {scalar_t__ length; } ;
struct TYPE_21__ {scalar_t__ version; TYPE_3__ reuc; TYPE_2__ names; int /*<<< orphan*/ * tree; TYPE_1__ entries; } ;
typedef  TYPE_5__ git_index ;
typedef  int /*<<< orphan*/  git_filebuf ;

/* Variables and functions */
 int GIT_OID_RAWSZ ; 
 scalar_t__ INDEX_HEADER_SIG ; 
 scalar_t__ INDEX_VERSION_NUMBER_EXT ; 
 scalar_t__ INDEX_VERSION_NUMBER_LB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct index_header*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_4__*) ; 
 void* FUNC5 (scalar_t__) ; 
 int FUNC6 (TYPE_5__*) ; 
 scalar_t__ FUNC7 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_5__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(git_oid *checksum, git_index *index, git_filebuf *file)
{
	git_oid hash_final;
	struct index_header header;
	bool is_extended;
	uint32_t index_version_number;

	FUNC0(index && file);

	if (index->version <= INDEX_VERSION_NUMBER_EXT)  {
		is_extended = FUNC6(index);
		index_version_number = is_extended ? INDEX_VERSION_NUMBER_EXT : INDEX_VERSION_NUMBER_LB;
	} else {
		index_version_number = index->version;
	}

	header.signature = FUNC5(INDEX_HEADER_SIG);
	header.version = FUNC5(index_version_number);
	header.entry_count = FUNC5((uint32_t)index->entries.length);

	if (FUNC3(file, &header, sizeof(struct index_header)) < 0)
		return -1;

	if (FUNC7(index, file) < 0)
		return -1;

	/* write the tree cache extension */
	if (index->tree != NULL && FUNC10(index, file) < 0)
		return -1;

	/* write the rename conflict extension */
	if (index->names.length > 0 && FUNC8(index, file) < 0)
		return -1;

	/* write the reuc extension */
	if (index->reuc.length > 0 && FUNC9(index, file) < 0)
		return -1;

	/* get out the hash for all the contents we've appended to the file */
	FUNC2(&hash_final, file);
	FUNC4(checksum, &hash_final);

	/* write it at the end of the file */
	if (FUNC3(file, hash_final.id, GIT_OID_RAWSZ) < 0)
		return -1;

	/* file entries are no longer up to date */
	FUNC1(index);

	return 0;
}