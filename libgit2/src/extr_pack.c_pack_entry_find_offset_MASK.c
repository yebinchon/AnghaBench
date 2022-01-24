#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char uint32_t ;
struct TYPE_10__ {unsigned char* data; } ;
struct git_pack_file {int index_version; scalar_t__ num_objects; TYPE_1__ index_map; } ;
struct TYPE_11__ {int* id; } ;
typedef  TYPE_2__ git_oid ;
typedef  int /*<<< orphan*/  git_off_t ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_ODB ; 
 size_t GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (char*,TYPE_2__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__ const*,TYPE_2__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct git_pack_file*,int) ; 
 unsigned int FUNC8 (unsigned char const) ; 
 int FUNC9 (struct git_pack_file*) ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned int,...) ; 
 int FUNC11 (unsigned char const*,unsigned int,unsigned int,unsigned int,int*) ; 

__attribute__((used)) static int FUNC12(
	git_off_t *offset_out,
	git_oid *found_oid,
	struct git_pack_file *p,
	const git_oid *short_oid,
	size_t len)
{
	const uint32_t *level1_ofs;
	const unsigned char *index;
	unsigned hi, lo, stride;
	int pos, found = 0;
	git_off_t offset;
	const unsigned char *current = 0;

	*offset_out = 0;

	if (p->index_version == -1) {
		int error;

		if ((error = FUNC9(p)) < 0)
			return error;
		FUNC0(p->index_map.data);
	}

	index = p->index_map.data;
	level1_ofs = p->index_map.data;

	if (p->index_version > 1) {
		level1_ofs += 2;
		index += 8;
	}

	index += 4 * 256;
	hi = FUNC8(level1_ofs[(int)short_oid->id[0]]);
	lo = ((short_oid->id[0] == 0x0) ? 0 : FUNC8(level1_ofs[(int)short_oid->id[0] - 1]));

	if (p->index_version > 1) {
		stride = 20;
	} else {
		stride = 24;
		index += 4;
	}

#ifdef INDEX_DEBUG_LOOKUP
	printf("%02x%02x%02x... lo %u hi %u nr %d\n",
		short_oid->id[0], short_oid->id[1], short_oid->id[2], lo, hi, p->num_objects);
#endif

	pos = FUNC11(index, stride, lo, hi, short_oid->id);

	if (pos >= 0) {
		/* An object matching exactly the oid was found */
		found = 1;
		current = index + pos * stride;
	} else {
		/* No object was found */
		/* pos refers to the object with the "closest" oid to short_oid */
		pos = - 1 - pos;
		if (pos < (int)p->num_objects) {
			current = index + pos * stride;

			if (!FUNC6(short_oid, (const git_oid *)current, len))
				found = 1;
		}
	}

	if (found && len != GIT_OID_HEXSZ && pos + 1 < (int)p->num_objects) {
		/* Check for ambiguousity */
		const unsigned char *next = current + stride;

		if (!FUNC6(short_oid, (const git_oid *)next, len)) {
			found = 2;
		}
	}

	if (!found)
		return FUNC3("failed to find offset for pack entry", short_oid, len);
	if (found > 1)
		return FUNC2("found multiple offsets for pack entry");

	if ((offset = FUNC7(p, pos)) < 0) {
		FUNC1(GIT_ERROR_ODB, "packfile index is corrupt");
		return -1;
	}

	*offset_out = offset;
	FUNC5(found_oid, current);

#ifdef INDEX_DEBUG_LOOKUP
	{
		unsigned char hex_sha1[GIT_OID_HEXSZ + 1];
		git_oid_fmt(hex_sha1, found_oid);
		hex_sha1[GIT_OID_HEXSZ] = '\0';
		printf("found lo=%d %s\n", lo, hex_sha1);
	}
#endif

	return 0;
}