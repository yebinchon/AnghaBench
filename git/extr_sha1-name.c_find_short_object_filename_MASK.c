#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct oid_array {int nr; struct object_id* oid; } ;
struct object_id {int /*<<< orphan*/  hash; } ;
struct object_directory {struct object_directory* next; } ;
struct TYPE_7__ {int /*<<< orphan*/  hash; } ;
struct disambiguate_state {TYPE_3__ bin_pfx; int /*<<< orphan*/  len; int /*<<< orphan*/  ambiguous; TYPE_2__* repo; } ;
struct TYPE_6__ {TYPE_1__* objects; } ;
struct TYPE_5__ {struct object_directory* odb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct oid_array* FUNC1 (struct object_directory*,TYPE_3__*) ; 
 int FUNC2 (struct oid_array*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct disambiguate_state*,struct object_id const*) ; 

__attribute__((used)) static void FUNC4(struct disambiguate_state *ds)
{
	struct object_directory *odb;

	for (odb = ds->repo->objects->odb; odb && !ds->ambiguous; odb = odb->next) {
		int pos;
		struct oid_array *loose_objects;

		loose_objects = FUNC1(odb, &ds->bin_pfx);
		pos = FUNC2(loose_objects, &ds->bin_pfx);
		if (pos < 0)
			pos = -1 - pos;
		while (!ds->ambiguous && pos < loose_objects->nr) {
			const struct object_id *oid;
			oid = loose_objects->oid + pos;
			if (!FUNC0(ds->len, ds->bin_pfx.hash, oid->hash))
				break;
			FUNC3(ds, oid);
			pos++;
		}
	}
}