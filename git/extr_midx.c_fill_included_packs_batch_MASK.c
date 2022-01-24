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
typedef  size_t uint32_t ;
struct repository {int dummy; } ;
struct repack_info {size_t pack_int_id; int referenced_objects; int /*<<< orphan*/  mtime; } ;
struct packed_git {size_t num_objects; int pack_size; int /*<<< orphan*/  mtime; } ;
struct multi_pack_index {size_t num_packs; size_t num_objects; struct packed_git** packs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct repack_info*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compare_by_mtime ; 
 int /*<<< orphan*/  FUNC1 (struct repack_info*) ; 
 size_t FUNC2 (struct multi_pack_index*,size_t) ; 
 scalar_t__ FUNC3 (struct packed_git*) ; 
 scalar_t__ FUNC4 (struct repository*,struct multi_pack_index*,size_t) ; 
 struct repack_info* FUNC5 (size_t,int) ; 

__attribute__((used)) static int FUNC6(struct repository *r,
				     struct multi_pack_index *m,
				     unsigned char *include_pack,
				     size_t batch_size)
{
	uint32_t i, packs_to_repack;
	size_t total_size;
	struct repack_info *pack_info = FUNC5(m->num_packs, sizeof(struct repack_info));

	for (i = 0; i < m->num_packs; i++) {
		pack_info[i].pack_int_id = i;

		if (FUNC4(r, m, i))
			continue;

		pack_info[i].mtime = m->packs[i]->mtime;
	}

	for (i = 0; batch_size && i < m->num_objects; i++) {
		uint32_t pack_int_id = FUNC2(m, i);
		pack_info[pack_int_id].referenced_objects++;
	}

	FUNC0(pack_info, m->num_packs, compare_by_mtime);

	total_size = 0;
	packs_to_repack = 0;
	for (i = 0; total_size < batch_size && i < m->num_packs; i++) {
		int pack_int_id = pack_info[i].pack_int_id;
		struct packed_git *p = m->packs[pack_int_id];
		size_t expected_size;

		if (!p)
			continue;
		if (FUNC3(p) || !p->num_objects)
			continue;

		expected_size = (size_t)(p->pack_size
					 * pack_info[i].referenced_objects);
		expected_size /= p->num_objects;

		if (expected_size >= batch_size)
			continue;

		packs_to_repack++;
		total_size += expected_size;
		include_pack[pack_int_id] = 1;
	}

	FUNC1(pack_info);

	if (total_size < batch_size || packs_to_repack < 2)
		return 1;

	return 0;
}