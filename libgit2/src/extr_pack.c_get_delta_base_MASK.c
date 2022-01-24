#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct git_pack_file {int /*<<< orphan*/  idx_cache; scalar_t__ has_cache; } ;
struct git_pack_entry {unsigned int offset; } ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  unsigned int git_off_t ;
typedef  scalar_t__ git_object_t ;
typedef  int /*<<< orphan*/  git_mwindow ;

/* Variables and functions */
 unsigned int GIT_EBUFS ; 
 scalar_t__ GIT_OBJECT_OFS_DELTA ; 
 scalar_t__ GIT_OBJECT_REF_DELTA ; 
 int /*<<< orphan*/  GIT_OID_HEXSZ ; 
 unsigned int GIT_PASSTHROUGH ; 
 scalar_t__ FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*) ; 
 struct git_pack_entry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (unsigned int*,int /*<<< orphan*/ *,struct git_pack_file*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC4 (struct git_pack_file*,int /*<<< orphan*/ **,unsigned int,unsigned int*) ; 
 unsigned int FUNC5 (char*) ; 

git_off_t FUNC6(
	struct git_pack_file *p,
	git_mwindow **w_curs,
	git_off_t *curpos,
	git_object_t type,
	git_off_t delta_obj_offset)
{
	unsigned int left = 0;
	unsigned char *base_info;
	git_off_t base_offset;
	git_oid unused;

	base_info = FUNC4(p, w_curs, *curpos, &left);
	/* Assumption: the only reason this would fail is because the file is too small */
	if (base_info == NULL)
		return GIT_EBUFS;
	/* pack_window_open() assured us we have [base_info, base_info + 20)
	 * as a range that we can look at without walking off the
	 * end of the mapped window. Its actually the hash size
	 * that is assured. An OFS_DELTA longer than the hash size
	 * is stupid, as then a REF_DELTA would be smaller to store.
	 */
	if (type == GIT_OBJECT_OFS_DELTA) {
		unsigned used = 0;
		unsigned char c = base_info[used++];
		size_t unsigned_base_offset = c & 127;
		while (c & 128) {
			if (left <= used)
				return GIT_EBUFS;
			unsigned_base_offset += 1;
			if (!unsigned_base_offset || FUNC0(unsigned_base_offset, 7))
				return 0; /* overflow */
			c = base_info[used++];
			unsigned_base_offset = (unsigned_base_offset << 7) + (c & 127);
		}
		if (unsigned_base_offset == 0 || (size_t)delta_obj_offset <= unsigned_base_offset)
			return 0; /* out of bound */
		base_offset = delta_obj_offset - unsigned_base_offset;
		*curpos += used;
	} else if (type == GIT_OBJECT_REF_DELTA) {
		/* If we have the cooperative cache, search in it first */
		if (p->has_cache) {
			struct git_pack_entry *entry;
			git_oid oid;

			FUNC1(&oid, base_info);
			if ((entry = FUNC2(p->idx_cache, &oid)) != NULL) {
				*curpos += 20;
				return entry->offset;
			} else {
				/* If we're building an index, don't try to find the pack
				 * entry; we just haven't seen it yet.  We'll make
				 * progress again in the next loop.
				 */
				return GIT_PASSTHROUGH;
			}
		}

		/* The base entry _must_ be in the same pack */
		if (FUNC3(&base_offset, &unused, p, (git_oid *)base_info, GIT_OID_HEXSZ) < 0)
			return FUNC5("base entry delta is not in the same pack");
		*curpos += 20;
	} else
		return 0;

	return base_offset;
}