#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  opts ;
typedef  int /*<<< orphan*/  git_odb ;
struct TYPE_13__ {int /*<<< orphan*/  verify; int /*<<< orphan*/  progress_cb_payload; int /*<<< orphan*/  progress_cb; } ;
typedef  TYPE_1__ git_indexer_options ;
struct TYPE_14__ {unsigned int mode; int do_fsync; TYPE_5__* pack; int /*<<< orphan*/  do_verify; int /*<<< orphan*/  expected_oids; int /*<<< orphan*/  entry_data; int /*<<< orphan*/  trailer; int /*<<< orphan*/  hash_ctx; int /*<<< orphan*/  progress_payload; int /*<<< orphan*/  progress_cb; int /*<<< orphan*/ * odb; } ;
typedef  TYPE_2__ git_indexer ;
typedef  int /*<<< orphan*/  git_buf ;
struct TYPE_16__ {int fd; } ;
struct TYPE_15__ {int /*<<< orphan*/  pack_name; TYPE_6__ mwf; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_1__ GIT_INDEXER_OPTIONS_INIT ; 
 unsigned int GIT_PACK_FILE_MODE ; 
 TYPE_2__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,char const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_6__*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_5__**,int /*<<< orphan*/ ) ; 
 scalar_t__ git_repository__fsync_gitdir ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

int FUNC16(
		git_indexer **out,
		const char *prefix,
		unsigned int mode,
		git_odb *odb,
		git_indexer_options *in_opts)
{
	git_indexer_options opts = GIT_INDEXER_OPTIONS_INIT;
	git_indexer *idx;
	git_buf path = GIT_BUF_INIT, tmp_path = GIT_BUF_INIT;
	static const char suff[] = "/pack";
	int error, fd = -1;

	if (in_opts)
		FUNC13(&opts, in_opts, sizeof(opts));

	idx = FUNC1(1, sizeof(git_indexer));
	FUNC0(idx);
	idx->odb = odb;
	idx->progress_cb = opts.progress_cb;
	idx->progress_payload = opts.progress_cb_payload;
	idx->mode = mode ? mode : GIT_PACK_FILE_MODE;
	FUNC9(&idx->hash_ctx);
	FUNC9(&idx->trailer);
	FUNC5(&idx->entry_data, 0);

	if ((error = FUNC11(&idx->expected_oids)) < 0)
		goto cleanup;

	idx->do_verify = opts.verify;

	if (git_repository__fsync_gitdir)
		idx->do_fsync = 1;

	error = FUNC6(&path, prefix, suff);
	if (error < 0)
		goto cleanup;

	fd = FUNC8(&tmp_path, FUNC3(&path), idx->mode);
	FUNC4(&path);
	if (fd < 0)
		goto cleanup;

	error = FUNC12(&idx->pack, FUNC3(&tmp_path));
	FUNC4(&tmp_path);

	if (error < 0)
		goto cleanup;

	idx->pack->mwf.fd = fd;
	if ((error = FUNC10(&idx->pack->mwf)) < 0)
		goto cleanup;

	*out = idx;
	return 0;

cleanup:
	if (fd != -1)
		FUNC14(fd);

	if (FUNC7(&tmp_path) > 0)
		FUNC15(FUNC3(&tmp_path));

	if (idx->pack != NULL)
		FUNC15(idx->pack->pack_name);

	FUNC4(&path);
	FUNC4(&tmp_path);
	FUNC2(idx);
	return -1;
}