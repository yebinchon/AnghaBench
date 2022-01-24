#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct packing_data {size_t nr_objects; struct object_entry* objects; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct object_entry {TYPE_1__ idx; } ;
struct island_bitmap {int dummy; } ;
typedef  scalar_t__ khiter_t ;

/* Variables and functions */
 int /*<<< orphan*/  core_island_name ; 
 scalar_t__ FUNC0 (struct island_bitmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  island_counter_core ; 
 int /*<<< orphan*/  island_marks ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct island_bitmap* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct packing_data*,struct object_entry*,int) ; 

int FUNC5(struct packing_data *to_pack)
{
	uint32_t i;

	if (!core_island_name || !island_marks)
		return 1;

	for (i = 0; i < to_pack->nr_objects; ++i) {
		struct object_entry *entry = &to_pack->objects[i];
		khiter_t pos = FUNC2(island_marks, entry->idx.oid);

		FUNC4(to_pack, entry, 1);

		if (pos < FUNC1(island_marks)) {
			struct island_bitmap *bitmap = FUNC3(island_marks, pos);

			if (FUNC0(bitmap, island_counter_core))
				FUNC4(to_pack, entry, 0);
		}
	}

	return 2;
}