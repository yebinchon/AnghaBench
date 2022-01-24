#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_treebuilder ;
struct TYPE_10__ {scalar_t__ entry_count; int /*<<< orphan*/  oid; } ;
typedef  TYPE_1__ git_tree_cache ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_11__ {char const* path; int /*<<< orphan*/  mode; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ git_index_entry ;
struct TYPE_12__ {int /*<<< orphan*/  tree; } ;
typedef  TYPE_3__ git_index ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char const*,TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int) ; 
 size_t FUNC5 (TYPE_3__*) ; 
 TYPE_2__* FUNC6 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char const*,char const*,size_t) ; 
 char* FUNC13 (char const*,char) ; 
 size_t FUNC14 (char const*) ; 
 char* FUNC15 (char*,char) ; 

__attribute__((used)) static int FUNC16(
	git_oid *oid,
	git_repository *repo,
	git_index *index,
	const char *dirname,
	size_t start,
	git_buf *shared_buf)
{
	git_treebuilder *bld = NULL;
	size_t i, entries = FUNC5(index);
	int error;
	size_t dirname_len = FUNC14(dirname);
	const git_tree_cache *cache;

	cache = FUNC8(index->tree, dirname);
	if (cache != NULL && cache->entry_count >= 0){
		FUNC7(oid, &cache->oid);
		return (int)FUNC2(dirname, index, start);
	}

	if ((error = FUNC10(&bld, repo, NULL)) < 0 || bld == NULL)
		return -1;

	/*
	 * This loop is unfortunate, but necessary. The index doesn't have
	 * any directores, so we need to handle that manually, and we
	 * need to keep track of the current position.
	 */
	for (i = start; i < entries; ++i) {
		const git_index_entry *entry = FUNC6(index, i);
		const char *filename, *next_slash;

	/*
	 * If we've left our (sub)tree, exit the loop and return. The
	 * first check is an early out (and security for the
	 * third). The second check is a simple prefix comparison. The
	 * third check catches situations where there is a directory
	 * win32/sys and a file win32mmap.c. Without it, the following
	 * code believes there is a file win32/mmap.c
	 */
		if (FUNC14(entry->path) < dirname_len ||
		    FUNC12(entry->path, dirname, dirname_len) ||
		    (dirname_len > 0 && entry->path[dirname_len] != '/')) {
			break;
		}

		filename = entry->path + dirname_len;
		if (*filename == '/')
			filename++;
		next_slash = FUNC13(filename, '/');
		if (next_slash) {
			git_oid sub_oid;
			int written;
			char *subdir, *last_comp;

			subdir = FUNC4(entry->path, next_slash - entry->path);
			FUNC0(subdir);

			/* Write out the subtree */
			written = FUNC16(&sub_oid, repo, index, subdir, i, shared_buf);
			if (written < 0) {
				FUNC3(subdir);
				goto on_error;
			} else {
				i = written - 1; /* -1 because of the loop increment */
			}

			/*
			 * We need to figure out what we want toinsert
			 * into this tree. If we're traversing
			 * deps/zlib/, then we only want to write
			 * 'zlib' into the tree.
			 */
			last_comp = FUNC15(subdir, '/');
			if (last_comp) {
				last_comp++; /* Get rid of the '/' */
			} else {
				last_comp = subdir;
			}

			error = FUNC1(bld, last_comp, &sub_oid, S_IFDIR, true);
			FUNC3(subdir);
			if (error < 0)
				goto on_error;
		} else {
			error = FUNC1(bld, filename, &entry->id, entry->mode, true);
			if (error < 0)
				goto on_error;
		}
	}

	if (FUNC11(oid, bld, shared_buf) < 0)
		goto on_error;

	FUNC9(bld);
	return (int)i;

on_error:
	FUNC9(bld);
	return -1;
}