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
struct TYPE_10__ {int size; } ;
typedef  TYPE_1__ git_pobject ;
struct TYPE_11__ {size_t nr_objects; int done; int big_file_threshold; TYPE_1__* object_list; int /*<<< orphan*/  progress_cb_payload; int /*<<< orphan*/  (* progress_cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ git_packbuilder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 
 int /*<<< orphan*/  GIT_PACKBUILDER_DELTAFICATION ; 
 int /*<<< orphan*/  GIT_PACK_DEPTH ; 
 scalar_t__ GIT_PACK_WINDOW ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 TYPE_1__** FUNC2 (size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (void**,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_1__**,size_t,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  type_size_sort ; 

__attribute__((used)) static int FUNC7(git_packbuilder *pb)
{
	git_pobject **delta_list;
	size_t i, n = 0;

	if (pb->nr_objects == 0 || pb->done)
		return 0; /* nothing to do */

	/*
	 * Although we do not report progress during deltafication, we
	 * at least report that we are in the deltafication stage
	 */
	if (pb->progress_cb)
			pb->progress_cb(GIT_PACKBUILDER_DELTAFICATION, 0, pb->nr_objects, pb->progress_cb_payload);

	delta_list = FUNC2(pb->nr_objects, sizeof(*delta_list));
	FUNC0(delta_list);

	for (i = 0; i < pb->nr_objects; ++i) {
		git_pobject *po = pb->object_list + i;

		/* Make sure the item is within our size limits */
		if (po->size < 50 || po->size > pb->big_file_threshold)
			continue;

		delta_list[n++] = po;
	}

	if (n > 1) {
		FUNC3((void **)delta_list, n, type_size_sort);
		if (FUNC4(pb, delta_list, n,
				   GIT_PACK_WINDOW + 1,
				   GIT_PACK_DEPTH) < 0) {
			FUNC1(delta_list);
			return -1;
		}
	}

	FUNC5(pb, pb->nr_objects, true);

	pb->done = true;
	FUNC1(delta_list);
	return 0;
}