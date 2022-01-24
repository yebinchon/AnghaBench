#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_14__ ;
typedef  struct TYPE_19__   TYPE_12__ ;

/* Type definitions */
struct TYPE_21__ {void* curpos; } ;
typedef  TYPE_1__ git_packfile_stream ;
typedef  void* git_off_t ;
typedef  scalar_t__ git_object_t ;
typedef  int /*<<< orphan*/  git_mwindow ;
struct TYPE_22__ {int /*<<< orphan*/  received_objects; int /*<<< orphan*/  indexed_objects; } ;
typedef  TYPE_2__ git_indexer_progress ;
struct TYPE_23__ {int have_stream; int have_delta; void* off; TYPE_14__* pack; scalar_t__ entry_type; int /*<<< orphan*/  hash_ctx; int /*<<< orphan*/  entry_data; void* entry_start; TYPE_1__ stream; } ;
typedef  TYPE_3__ git_indexer ;
struct TYPE_19__ {scalar_t__ size; } ;
struct TYPE_20__ {TYPE_12__ mwf; } ;

/* Variables and functions */
 int GIT_EBUFS ; 
 scalar_t__ GIT_OBJECT_OFS_DELTA ; 
 scalar_t__ GIT_OBJECT_REF_DELTA ; 
 int FUNC0 (TYPE_3__*,scalar_t__) ; 
 int FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,TYPE_14__*,void*) ; 
 int FUNC7 (size_t*,scalar_t__*,TYPE_12__*,int /*<<< orphan*/ **,void**) ; 
 int FUNC8 (int /*<<< orphan*/ *,size_t,scalar_t__) ; 
 int FUNC9 (TYPE_3__*,TYPE_1__*) ; 
 int FUNC10 (TYPE_3__*,TYPE_1__*) ; 
 int FUNC11 (TYPE_3__*) ; 
 int FUNC12 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC13(git_indexer *idx, git_indexer_progress *stats)
{
	git_packfile_stream *stream = &idx->stream;
	git_off_t entry_start = idx->off;
	size_t entry_size;
	git_object_t type;
	git_mwindow *w = NULL;
	int error;

	if (idx->pack->mwf.size <= idx->off + 20)
		return GIT_EBUFS;

	if (!idx->have_stream) {
		error = FUNC7(&entry_size, &type, &idx->pack->mwf, &w, &idx->off);
		if (error == GIT_EBUFS) {
			idx->off = entry_start;
			return error;
		}
		if (error < 0)
			return error;

		FUNC4(&w);
		idx->entry_start = entry_start;
		FUNC3(&idx->hash_ctx);
		FUNC2(&idx->entry_data);

		if (type == GIT_OBJECT_REF_DELTA || type == GIT_OBJECT_OFS_DELTA) {
			error = FUNC0(idx, type);
			if (error == GIT_EBUFS) {
				idx->off = entry_start;
				return error;
			}
			if (error < 0)
				return error;

			idx->have_delta = 1;
		} else {
			idx->have_delta = 0;

			error = FUNC8(&idx->hash_ctx, entry_size, type);
			if (error < 0)
				return error;
		}

		idx->have_stream = 1;
		idx->entry_type = type;

		error = FUNC6(stream, idx->pack, idx->off);
		if (error < 0)
			return error;
	}

	if (idx->have_delta) {
		error = FUNC10(idx, stream);
	} else {
		error = FUNC9(idx, stream);
	}

	idx->off = stream->curpos;
	if (error == GIT_EBUFS)
		return error;

	/* We want to free the stream reasorces no matter what here */
	idx->have_stream = 0;
	FUNC5(stream);

	if (error < 0)
		return error;

	if (idx->have_delta) {
		error = FUNC11(idx);
	} else {
		error = FUNC12(idx);
	}

	if (error < 0)
		return error;

	if (!idx->have_delta) {
		stats->indexed_objects++;
	}
	stats->received_objects++;

	if ((error = FUNC1(idx, stats)) != 0)
		return error;

	return 0;
}