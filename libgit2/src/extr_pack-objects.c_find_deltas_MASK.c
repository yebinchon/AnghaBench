#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct unpacked {size_t depth; struct unpacked* data; struct unpacked* index; TYPE_1__* object; } ;
struct TYPE_17__ {scalar_t__ delta; scalar_t__ z_delta_size; scalar_t__ delta_size; struct unpacked* delta_data; scalar_t__ delta_child; } ;
typedef  TYPE_1__ git_pobject ;
struct TYPE_18__ {int nr_deltified; size_t window_memory_limit; int /*<<< orphan*/  delta_cache_size; } ;
typedef  TYPE_2__ git_packbuilder ;
struct TYPE_19__ {scalar_t__ size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_buf ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct unpacked*) ; 
 size_t SIZE_MAX ; 
 size_t FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct unpacked*) ; 
 struct unpacked* FUNC3 (size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (struct unpacked*) ; 
 struct unpacked* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 scalar_t__ FUNC12 (TYPE_3__*,struct unpacked*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct unpacked*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int,int) ; 
 scalar_t__ FUNC15 (TYPE_2__*,struct unpacked*,struct unpacked*,size_t,size_t*,int*) ; 

__attribute__((used)) static int FUNC16(git_packbuilder *pb, git_pobject **list,
	size_t *list_size, size_t window, size_t depth)
{
	git_pobject *po;
	git_buf zbuf = GIT_BUF_INIT;
	struct unpacked *array;
	size_t idx = 0, count = 0;
	size_t mem_usage = 0;
	size_t i;
	int error = -1;

	array = FUNC3(window, sizeof(struct unpacked));
	FUNC0(array);

	for (;;) {
		struct unpacked *n = array + idx;
		size_t max_depth, j, best_base = SIZE_MAX;

		FUNC10(pb);
		if (!*list_size) {
			FUNC11(pb);
			break;
		}

		pb->nr_deltified += 1;
		FUNC14(pb, pb->nr_deltified, false);

		po = *list++;
		(*list_size)--;
		FUNC11(pb);

		mem_usage -= FUNC2(n);
		n->object = po;

		while (pb->window_memory_limit &&
		       mem_usage > pb->window_memory_limit &&
		       count > 1) {
			size_t tail = (idx + window - count) % window;
			mem_usage -= FUNC2(array + tail);
			count--;
		}

		/*
		 * If the current object is at pack edge, take the depth the
		 * objects that depend on the current object into account
		 * otherwise they would become too deep.
		 */
		max_depth = depth;
		if (po->delta_child) {
			size_t delta_limit = FUNC1(po, 0);

			if (delta_limit > max_depth)
				goto next;

			max_depth -= delta_limit;
		}

		j = window;
		while (--j > 0) {
			int ret;
			size_t other_idx = idx + j;
			struct unpacked *m;

			if (other_idx >= window)
				other_idx -= window;

			m = array + other_idx;
			if (!m->object)
				break;

			if (FUNC15(pb, n, m, max_depth, &mem_usage, &ret) < 0)
				goto on_error;
			if (ret < 0)
				break;
			else if (ret > 0)
				best_base = other_idx;
		}

		/*
		 * If we decided to cache the delta data, then it is best
		 * to compress it right away.  First because we have to do
		 * it anyway, and doing it here while we're threaded will
		 * save a lot of time in the non threaded write phase,
		 * as well as allow for caching more deltas within
		 * the same cache size limit.
		 * ...
		 * But only if not writing to stdout, since in that case
		 * the network is most likely throttling writes anyway,
		 * and therefore it is best to go to the write phase ASAP
		 * instead, as we can afford spending more time compressing
		 * between writes at that moment.
		 */
		if (po->delta_data) {
			if (FUNC12(&zbuf, po->delta_data, po->delta_size) < 0)
				goto on_error;

			FUNC4(po->delta_data);
			po->delta_data = FUNC5(zbuf.size);
			FUNC0(po->delta_data);

			FUNC13(po->delta_data, zbuf.ptr, zbuf.size);
			po->z_delta_size = zbuf.size;
			FUNC6(&zbuf);

			FUNC8(pb);
			pb->delta_cache_size -= po->delta_size;
			pb->delta_cache_size += po->z_delta_size;
			FUNC9(pb);
		}

		/*
		 * If we made n a delta, and if n is already at max
		 * depth, leaving it in the window is pointless.  we
		 * should evict it first.
		 */
		if (po->delta && max_depth <= n->depth)
			continue;

		/*
		 * Move the best delta base up in the window, after the
		 * currently deltified object, to keep it longer.  It will
		 * be the first base object to be attempted next.
		 */
		if (po->delta) {
			struct unpacked swap = array[best_base];
			size_t dist = (window + idx - best_base) % window;
			size_t dst = best_base;
			while (dist--) {
				size_t src = (dst + 1) % window;
				array[dst] = array[src];
				dst = src;
			}
			array[dst] = swap;
		}

		next:
		idx++;
		if (count + 1 < window)
			count++;
		if (idx >= window)
			idx = 0;
	}
	error = 0;

on_error:
	for (i = 0; i < window; ++i) {
		FUNC4(array[i].index);
		FUNC4(array[i].data);
	}
	FUNC4(array);
	FUNC7(&zbuf);

	return error;
}