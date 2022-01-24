#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_mtime; int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mode; } ;
struct TYPE_2__ {int fd; int /*<<< orphan*/  size; } ;
struct git_pack_file {int pack_keep; int pack_local; int index_version; int /*<<< orphan*/  bases; int /*<<< orphan*/  lock; scalar_t__ mtime; TYPE_1__ mwf; scalar_t__ pack_name; } ;
typedef  scalar_t__ git_time_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct git_pack_file*) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct git_pack_file* FUNC4 (int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct git_pack_file*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  git_disable_pack_keep_file_checks ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,char const*,int) ; 
 scalar_t__ FUNC12 (scalar_t__,struct stat*) ; 
 size_t FUNC13 (char const*) ; 

int FUNC14(struct git_pack_file **pack_out, const char *path)
{
	struct stat st;
	struct git_pack_file *p;
	size_t path_len = path ? FUNC13(path) : 0, alloc_len;

	*pack_out = NULL;

	if (path_len < FUNC13(".idx"))
		return FUNC9("invalid packfile path", NULL, 0);

	FUNC1(&alloc_len, sizeof(*p), path_len);
	FUNC1(&alloc_len, alloc_len, 2);

	p = FUNC4(1, alloc_len);
	FUNC0(p);

	FUNC11(p->pack_name, path, path_len + 1);

	/*
	 * Make sure a corresponding .pack file exists and that
	 * the index looks sane.
	 */
	if (FUNC6(path, ".idx") == 0) {
		size_t root_len = path_len - FUNC13(".idx");

		if (!git_disable_pack_keep_file_checks) {
			FUNC11(p->pack_name + root_len, ".keep", sizeof(".keep"));
			if (FUNC10(p->pack_name) == true)
				p->pack_keep = 1;
		}

		FUNC11(p->pack_name + root_len, ".pack", sizeof(".pack"));
	}

	if (FUNC12(p->pack_name, &st) < 0 || !FUNC2(st.st_mode)) {
		FUNC5(p);
		return FUNC9("packfile not found", NULL, 0);
	}

	/* ok, it looks sane as far as we can check without
	 * actually mapping the pack file.
	 */
	p->mwf.fd = -1;
	p->mwf.size = st.st_size;
	p->pack_local = 1;
	p->mtime = (git_time_t)st.st_mtime;
	p->index_version = -1;

	if (FUNC8(&p->lock)) {
		FUNC7(GIT_ERROR_OS, "failed to initialize packfile mutex");
		FUNC5(p);
		return -1;
	}

	if (FUNC3(&p->bases) < 0) {
		FUNC5(p);
		return -1;
	}

	*pack_out = p;

	return 0;
}