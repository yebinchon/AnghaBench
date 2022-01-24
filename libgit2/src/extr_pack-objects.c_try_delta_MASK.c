#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
struct unpacked {size_t depth; void* data; int /*<<< orphan*/  index; TYPE_1__* object; } ;
struct TYPE_7__ {scalar_t__ type; size_t size; size_t delta_size; void* delta_data; struct TYPE_7__* delta; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_pobject ;
struct TYPE_8__ {size_t delta_cache_size; int /*<<< orphan*/  odb; } ;
typedef  TYPE_2__ git_packbuilder ;
typedef  int /*<<< orphan*/  git_odb_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_2__*,size_t,size_t,size_t) ; 
 int FUNC3 (size_t*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 void* FUNC6 (size_t) ; 
 void* FUNC7 (void*,size_t) ; 
 scalar_t__ FUNC8 (void**,size_t*,int /*<<< orphan*/ ,void*,size_t,size_t) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,void*,size_t) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 size_t FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (void*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC19(git_packbuilder *pb, struct unpacked *trg,
		     struct unpacked *src, size_t max_depth,
			 size_t *mem_usage, int *ret)
{
	git_pobject *trg_object = trg->object;
	git_pobject *src_object = src->object;
	git_odb_object *obj;
	size_t trg_size, src_size, delta_size, sizediff, max_size, sz;
	size_t ref_depth;
	void *delta_buf;

	/* Don't bother doing diffs between different types */
	if (trg_object->type != src_object->type) {
		*ret = -1;
		return 0;
	}

	*ret = 0;

	/* TODO: support reuse-delta */

	/* Let's not bust the allowed depth. */
	if (src->depth >= max_depth)
		return 0;

	/* Now some size filtering heuristics. */
	trg_size = trg_object->size;
	if (!trg_object->delta) {
		max_size = trg_size/2 - 20;
		ref_depth = 1;
	} else {
		max_size = trg_object->delta_size;
		ref_depth = trg->depth;
	}

	max_size = (uint64_t)max_size * (max_depth - src->depth) /
					(max_depth - ref_depth + 1);
	if (max_size == 0)
		return 0;

	src_size = src_object->size;
	sizediff = src_size < trg_size ? trg_size - src_size : 0;
	if (sizediff >= max_size)
		return 0;
	if (trg_size < src_size / 32)
		return 0;

	/* Load data if not already done */
	if (!trg->data) {
		if (FUNC15(&obj, pb->odb, &trg_object->id) < 0)
			return -1;

		sz = FUNC14(obj);
		trg->data = FUNC6(sz);
		FUNC0(trg->data);
		FUNC18(trg->data, FUNC12(obj), sz);

		FUNC13(obj);

		if (sz != trg_size) {
			FUNC11(GIT_ERROR_INVALID,
				   "inconsistent target object length");
			return -1;
		}

		*mem_usage += sz;
	}
	if (!src->data) {
		size_t obj_sz;

		if (FUNC15(&obj, pb->odb, &src_object->id) < 0 ||
			!FUNC5(obj_sz = FUNC14(obj)))
			return -1;

		sz = obj_sz;
		src->data = FUNC6(sz);
		FUNC0(src->data);
		FUNC18(src->data, FUNC12(obj), sz);

		FUNC13(obj);

		if (sz != src_size) {
			FUNC11(GIT_ERROR_INVALID,
				   "inconsistent source object length");
			return -1;
		}

		*mem_usage += sz;
	}
	if (!src->index) {
		if (FUNC9(&src->index, src->data, src_size) < 0)
			return 0; /* suboptimal pack - out of memory */

		*mem_usage += FUNC10(src->index);
	}

	if (FUNC8(&delta_buf, &delta_size, src->index, trg->data, trg_size,
		max_size) < 0)
		return 0;

	if (trg_object->delta) {
		/* Prefer only shallower same-sized deltas. */
		if (delta_size == trg_object->delta_size &&
		    src->depth + 1 >= trg->depth) {
			FUNC4(delta_buf);
			return 0;
		}
	}

	FUNC16(pb);
	if (trg_object->delta_data) {
		FUNC4(trg_object->delta_data);
		FUNC1(pb->delta_cache_size >= trg_object->delta_size);
		pb->delta_cache_size -= trg_object->delta_size;
		trg_object->delta_data = NULL;
	}
	if (FUNC2(pb, src_size, trg_size, delta_size)) {
		bool overflow = FUNC3(
			&pb->delta_cache_size, pb->delta_cache_size, delta_size);

		FUNC17(pb);

		if (overflow) {
			FUNC4(delta_buf);
			return -1;
		}

		trg_object->delta_data = FUNC7(delta_buf, delta_size);
		FUNC0(trg_object->delta_data);
	} else {
		/* create delta when writing the pack */
		FUNC17(pb);
		FUNC4(delta_buf);
	}

	trg_object->delta = src_object;
	trg_object->delta_size = delta_size;
	trg->depth = src->depth + 1;

	*ret = 1;
	return 0;
}