#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {char* glob; int /*<<< orphan*/  loose; int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ refdb_fs_iter ;
struct TYPE_20__ {int /*<<< orphan*/  commonpath; int /*<<< orphan*/  iterator_flags; } ;
typedef  TYPE_2__ refdb_fs_backend ;
struct TYPE_21__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_3__ git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;
struct TYPE_22__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_4__ git_index_entry ;
struct TYPE_23__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_5__ git_buf ;

/* Variables and functions */
 TYPE_5__ GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ; 
 char* GIT_REFS_DIR ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 char* FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int FUNC3 (TYPE_5__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_5__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_5__*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__ const**,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC12 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC13 (char const*) ; 
 scalar_t__ FUNC14 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(refdb_fs_backend *backend, refdb_fs_iter *iter)
{
	int error = 0;
	git_buf path = GIT_BUF_INIT;
	git_iterator *fsit = NULL;
	git_iterator_options fsit_opts = GIT_ITERATOR_OPTIONS_INIT;
	const git_index_entry *entry = NULL;
	const char *ref_prefix = GIT_REFS_DIR;
	size_t ref_prefix_len = FUNC13(ref_prefix);

	if (!backend->commonpath) /* do nothing if no commonpath for loose refs */
		return 0;

	fsit_opts.flags = backend->iterator_flags;

	if (iter->glob) {
		const char *last_sep = NULL;
		const char *pos;
		for (pos = iter->glob; *pos; ++pos) {
			switch (*pos) {
			case '?':
			case '*':
			case '[':
			case '\\':
				break;
			case '/':
				last_sep = pos;
				/* FALLTHROUGH */
			default:
				continue;
			}
			break;
		}
		if (last_sep) {
			ref_prefix = iter->glob;
			ref_prefix_len = (last_sep - ref_prefix) + 1;
		}
	}

	if ((error = FUNC3(&path, "%s/", backend->commonpath)) < 0 ||
		(error = FUNC4(&path, ref_prefix, ref_prefix_len)) < 0) {
		FUNC2(&path);
		return error;
	}

	if ((error = FUNC9(&fsit, path.ptr, &fsit_opts)) < 0) {
		FUNC2(&path);
		return (iter->glob && error == GIT_ENOTFOUND)? 0 : error;
	}

	error = FUNC6(&path, ref_prefix);

	while (!error && !FUNC8(&entry, fsit)) {
		const char *ref_name;
		char *ref_dup;

		FUNC7(&path, ref_prefix_len);
		FUNC5(&path, entry->path);
		ref_name = FUNC1(&path);

		if (FUNC0(ref_name, ".lock") == 0 ||
			(iter->glob && FUNC14(iter->glob, ref_name, 0) != 0))
			continue;

		ref_dup = FUNC11(&iter->pool, ref_name);
		if (!ref_dup)
			error = -1;
		else
			error = FUNC12(&iter->loose, ref_dup);
	}

	FUNC10(fsit);
	FUNC2(&path);

	return error;
}