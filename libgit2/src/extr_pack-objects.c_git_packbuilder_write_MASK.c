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
struct pack_write_context {int /*<<< orphan*/ * stats; int /*<<< orphan*/ * indexer; } ;
struct TYPE_7__ {int /*<<< orphan*/  pack_oid; int /*<<< orphan*/  repo; int /*<<< orphan*/  odb; } ;
typedef  TYPE_1__ git_packbuilder ;
typedef  int /*<<< orphan*/  git_indexer_progress_cb ;
typedef  int /*<<< orphan*/  git_indexer_progress ;
struct TYPE_8__ {void* progress_cb_payload; int /*<<< orphan*/  progress_cb; } ;
typedef  TYPE_2__ git_indexer_options ;
typedef  int /*<<< orphan*/  git_indexer ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CONFIGMAP_FSYNCOBJECTFILES ; 
 TYPE_2__ GIT_INDEXER_OPTIONS_INIT ; 
 int /*<<< orphan*/  PREPARE_PACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,char const*,unsigned int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,struct pack_write_context*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_cb ; 

int FUNC8(
	git_packbuilder *pb,
	const char *path,
	unsigned int mode,
	git_indexer_progress_cb progress_cb,
	void *progress_cb_payload)
{
	git_indexer_options opts = GIT_INDEXER_OPTIONS_INIT;
	git_indexer *indexer;
	git_indexer_progress stats;
	struct pack_write_context ctx;
	int t;

	PREPARE_PACK;

	opts.progress_cb = progress_cb;
	opts.progress_cb_payload = progress_cb_payload;

	if (FUNC4(
		&indexer, path, mode, pb->odb, &opts) < 0)
		return -1;

	if (!FUNC7(&t, pb->repo, GIT_CONFIGMAP_FSYNCOBJECTFILES) && t)
		FUNC0(indexer, 1);

	ctx.indexer = indexer;
	ctx.stats = &stats;

	if (FUNC6(pb, write_cb, &ctx) < 0 ||
		FUNC1(indexer, &stats) < 0) {
		FUNC2(indexer);
		return -1;
	}

	FUNC5(&pb->pack_oid, FUNC3(indexer));

	FUNC2(indexer);
	return 0;
}