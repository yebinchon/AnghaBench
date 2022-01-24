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
typedef  scalar_t__ uint32_t ;
struct object_id {int /*<<< orphan*/  hash; } ;
struct multi_pack_index {scalar_t__ num_objects; } ;
struct TYPE_2__ {int /*<<< orphan*/  hash; } ;
struct disambiguate_state {TYPE_1__ bin_pfx; int /*<<< orphan*/  len; int /*<<< orphan*/  ambiguous; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct multi_pack_index*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct object_id* FUNC2 (struct object_id*,struct multi_pack_index*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct disambiguate_state*,struct object_id const*) ; 

__attribute__((used)) static void FUNC4(struct multi_pack_index *m,
			   struct disambiguate_state *ds)
{
	uint32_t num, i, first = 0;
	const struct object_id *current = NULL;
	num = m->num_objects;

	if (!num)
		return;

	FUNC0(&ds->bin_pfx, m, &first);

	/*
	 * At this point, "first" is the location of the lowest object
	 * with an object name that could match "bin_pfx".  See if we have
	 * 0, 1 or more objects that actually match(es).
	 */
	for (i = first; i < num && !ds->ambiguous; i++) {
		struct object_id oid;
		current = FUNC2(&oid, m, i);
		if (!FUNC1(ds->len, ds->bin_pfx.hash, current->hash))
			break;
		FUNC3(ds, current);
	}
}