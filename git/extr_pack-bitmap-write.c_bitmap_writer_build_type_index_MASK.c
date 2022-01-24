#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct packing_data {int /*<<< orphan*/  repo; int /*<<< orphan*/  nr_objects; int /*<<< orphan*/  in_pack_pos; } ;
struct pack_idx_entry {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct object_entry {TYPE_1__ idx; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_4__ {void* tags; void* blobs; void* trees; void* commits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  OBJ_BLOB 131 
#define  OBJ_COMMIT 130 
#define  OBJ_TAG 129 
#define  OBJ_TREE 128 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct packing_data*,struct object_entry*,size_t) ; 
 int FUNC5 (struct object_entry*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__ writer ; 

void FUNC8(struct packing_data *to_pack,
				    struct pack_idx_entry **index,
				    uint32_t index_nr)
{
	uint32_t i;

	writer.commits = FUNC2();
	writer.trees = FUNC2();
	writer.blobs = FUNC2();
	writer.tags = FUNC2();
	FUNC0(to_pack->in_pack_pos, to_pack->nr_objects);

	for (i = 0; i < index_nr; ++i) {
		struct object_entry *entry = (struct object_entry *)index[i];
		enum object_type real_type;

		FUNC4(to_pack, entry, i);

		switch (FUNC5(entry)) {
		case OBJ_COMMIT:
		case OBJ_TREE:
		case OBJ_BLOB:
		case OBJ_TAG:
			real_type = FUNC5(entry);
			break;

		default:
			real_type = FUNC6(to_pack->repo,
						    &entry->idx.oid, NULL);
			break;
		}

		switch (real_type) {
		case OBJ_COMMIT:
			FUNC3(writer.commits, i);
			break;

		case OBJ_TREE:
			FUNC3(writer.trees, i);
			break;

		case OBJ_BLOB:
			FUNC3(writer.blobs, i);
			break;

		case OBJ_TAG:
			FUNC3(writer.tags, i);
			break;

		default:
			FUNC1("Missing type information for %s (%d/%d)",
			    FUNC7(&entry->idx.oid), real_type,
			    FUNC5(entry));
		}
	}
}