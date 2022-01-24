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
typedef  size_t uint32_t ;
struct pack_midx_entry {int /*<<< orphan*/  oid; } ;
struct pack_info {TYPE_1__* p; } ;
struct multi_pack_index {size_t num_packs; int /*<<< orphan*/ * chunk_oid_fanout; } ;
struct TYPE_3__ {scalar_t__ num_objects; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pack_midx_entry*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct pack_midx_entry*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct pack_midx_entry*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t,TYPE_1__*,size_t,struct pack_midx_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct pack_midx_entry*) ; 
 size_t FUNC5 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct pack_midx_entry*,struct pack_midx_entry*,int) ; 
 int /*<<< orphan*/  midx_oid_compare ; 
 int /*<<< orphan*/  FUNC7 (struct multi_pack_index*,struct pack_midx_entry*,size_t) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct pack_midx_entry *FUNC10(struct multi_pack_index *m,
						  struct pack_info *info,
						  uint32_t nr_packs,
						  uint32_t *nr_objects)
{
	uint32_t cur_fanout, cur_pack, cur_object;
	uint32_t alloc_fanout, alloc_objects, total_objects = 0;
	struct pack_midx_entry *entries_by_fanout = NULL;
	struct pack_midx_entry *deduplicated_entries = NULL;
	uint32_t start_pack = m ? m->num_packs : 0;

	for (cur_pack = start_pack; cur_pack < nr_packs; cur_pack++)
		total_objects += info[cur_pack].p->num_objects;

	/*
	 * As we de-duplicate by fanout value, we expect the fanout
	 * slices to be evenly distributed, with some noise. Hence,
	 * allocate slightly more than one 256th.
	 */
	alloc_objects = alloc_fanout = total_objects > 3200 ? total_objects / 200 : 16;

	FUNC0(entries_by_fanout, alloc_fanout);
	FUNC0(deduplicated_entries, alloc_objects);
	*nr_objects = 0;

	for (cur_fanout = 0; cur_fanout < 256; cur_fanout++) {
		uint32_t nr_fanout = 0;

		if (m) {
			uint32_t start = 0, end;

			if (cur_fanout)
				start = FUNC8(m->chunk_oid_fanout[cur_fanout - 1]);
			end = FUNC8(m->chunk_oid_fanout[cur_fanout]);

			for (cur_object = start; cur_object < end; cur_object++) {
				FUNC1(entries_by_fanout, nr_fanout + 1, alloc_fanout);
				FUNC7(m,
							   &entries_by_fanout[nr_fanout],
							   cur_object);
				nr_fanout++;
			}
		}

		for (cur_pack = start_pack; cur_pack < nr_packs; cur_pack++) {
			uint32_t start = 0, end;

			if (cur_fanout)
				start = FUNC5(info[cur_pack].p, cur_fanout - 1);
			end = FUNC5(info[cur_pack].p, cur_fanout);

			for (cur_object = start; cur_object < end; cur_object++) {
				FUNC1(entries_by_fanout, nr_fanout + 1, alloc_fanout);
				FUNC3(cur_pack, info[cur_pack].p, cur_object, &entries_by_fanout[nr_fanout]);
				nr_fanout++;
			}
		}

		FUNC2(entries_by_fanout, nr_fanout, midx_oid_compare);

		/*
		 * The batch is now sorted by OID and then mtime (descending).
		 * Take only the first duplicate.
		 */
		for (cur_object = 0; cur_object < nr_fanout; cur_object++) {
			if (cur_object && FUNC9(&entries_by_fanout[cur_object - 1].oid,
						&entries_by_fanout[cur_object].oid))
				continue;

			FUNC1(deduplicated_entries, *nr_objects + 1, alloc_objects);
			FUNC6(&deduplicated_entries[*nr_objects],
			       &entries_by_fanout[cur_object],
			       sizeof(struct pack_midx_entry));
			(*nr_objects)++;
		}
	}

	FUNC4(entries_by_fanout);
	return deduplicated_entries;
}