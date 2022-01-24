#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  git_tree_entry ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_off_t ;
typedef  int /*<<< orphan*/  git_buf ;
typedef  scalar_t__ git_bom_t ;
typedef  int /*<<< orphan*/  git_blob ;
struct TYPE_14__ {int /*<<< orphan*/  key; } ;
typedef  TYPE_2__ git_attr_session ;
typedef  int const git_attr_file_source ;
typedef  int (* git_attr_file_parser ) (int /*<<< orphan*/ *,TYPE_3__*,char const*,int) ;
struct TYPE_16__ {int /*<<< orphan*/  path; int /*<<< orphan*/  fullpath; } ;
typedef  TYPE_4__ git_attr_file_entry ;
struct TYPE_13__ {int /*<<< orphan*/  stamp; int /*<<< orphan*/  oid; } ;
struct TYPE_15__ {int nonexistent; TYPE_1__ cache_data; int /*<<< orphan*/  session_key; } ;
typedef  TYPE_3__ git_attr_file ;

/* Variables and functions */
#define  GIT_ATTR_FILE__FROM_FILE 131 
#define  GIT_ATTR_FILE__FROM_HEAD 130 
#define  GIT_ATTR_FILE__FROM_INDEX 129 
#define  GIT_ATTR_FILE__IN_MEMORY 128 
 scalar_t__ GIT_BOM_UTF8 ; 
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__**,TYPE_4__*,int const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int FUNC13 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int const) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct stat*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,struct stat*) ; 

int FUNC27(
	git_attr_file **out,
	git_repository *repo,
	git_attr_session *attr_session,
	git_attr_file_entry *entry,
	git_attr_file_source source,
	git_attr_file_parser parser,
	bool allow_macros)
{
	int error = 0;
	git_tree *tree = NULL;
	git_tree_entry *tree_entry = NULL;
	git_blob *blob = NULL;
	git_buf content = GIT_BUF_INIT;
	const char *content_str;
	git_attr_file *file;
	struct stat st;
	bool nonexistent = false;
	int bom_offset;
	git_bom_t bom;
	git_oid id;
	git_off_t blobsize;

	*out = NULL;

	switch (source) {
	case GIT_ATTR_FILE__IN_MEMORY:
		/* in-memory attribute file doesn't need data */
		break;
	case GIT_ATTR_FILE__FROM_INDEX: {
		if ((error = FUNC2(&id, repo, entry->path)) < 0 ||
			(error = FUNC7(&blob, repo, &id)) < 0)
			return error;

		/* Do not assume that data straight from the ODB is NULL-terminated;
		 * copy the contents of a file to a buffer to work on */
		blobsize = FUNC9(blob);

		FUNC0(blobsize);
		FUNC12(&content, FUNC8(blob), (size_t)blobsize);
		break;
	}
	case GIT_ATTR_FILE__FROM_FILE: {
		int fd = -1;

		/* For open or read errors, pretend that we got ENOTFOUND. */
		/* TODO: issue warning when warning API is available */

		if (FUNC26(entry->fullpath, &st) < 0 ||
			FUNC1(st.st_mode) ||
			(fd = FUNC16(entry->fullpath)) < 0 ||
			(error = FUNC17(&content, fd, (size_t)st.st_size)) < 0)
			nonexistent = true;

		if (fd >= 0)
			FUNC25(fd);

		break;
	}
	case GIT_ATTR_FILE__FROM_HEAD: {
		if ((error = FUNC19(&tree, repo)) < 0 ||
		    (error = FUNC20(&tree_entry, tree, entry->path)) < 0 ||
		    (error = FUNC7(&blob, repo, FUNC22(tree_entry))) < 0)
			goto cleanup;

		/*
		 * Do not assume that data straight from the ODB is NULL-terminated;
		 * copy the contents of a file to a buffer to work on.
		 */
		blobsize = FUNC9(blob);

		FUNC0(blobsize);
		if ((error = FUNC12(&content,
			FUNC8(blob), (size_t)blobsize)) < 0)
			goto cleanup;

		break;
	}
	default:
		FUNC14(GIT_ERROR_INVALID, "unknown file source %d", source);
		return -1;
	}

	if ((error = FUNC4(&file, entry, source)) < 0)
		goto cleanup;

	/* advance over a UTF8 BOM */
	content_str = FUNC10(&content);
	bom_offset = FUNC13(&bom, &content);

	if (bom == GIT_BOM_UTF8)
		content_str += bom_offset;

	/* store the key of the attr_reader; don't bother with cache
	 * invalidation during the same attr reader session.
	 */
	if (attr_session)
		file->session_key = attr_session->key;

	if (parser && (error = parser(repo, file, content_str, allow_macros)) < 0) {
		FUNC3(file);
		goto cleanup;
	}

	/* write cache breakers */
	if (nonexistent)
		file->nonexistent = 1;
	else if (source == GIT_ATTR_FILE__FROM_INDEX)
		FUNC18(&file->cache_data.oid, FUNC6(blob));
	else if (source == GIT_ATTR_FILE__FROM_HEAD)
		FUNC18(&file->cache_data.oid, FUNC24(tree));
	else if (source == GIT_ATTR_FILE__FROM_FILE)
		FUNC15(&file->cache_data.stamp, &st);
	/* else always cacheable */

	*out = file;

cleanup:
	FUNC5(blob);
	FUNC21(tree_entry);
	FUNC23(tree);
	FUNC11(&content);

	return error;
}