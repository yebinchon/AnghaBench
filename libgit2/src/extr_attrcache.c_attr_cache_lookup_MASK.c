#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_11__ {char* ptr; } ;
typedef  TYPE_1__ git_buf ;
struct TYPE_12__ {TYPE_1__ tmp; } ;
typedef  TYPE_2__ git_attr_session ;
typedef  size_t git_attr_file_source ;
struct TYPE_13__ {int /*<<< orphan*/ ** file; } ;
typedef  TYPE_3__ git_attr_file_entry ;
typedef  int /*<<< orphan*/  git_attr_file ;
typedef  int /*<<< orphan*/  git_attr_cache ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC3 (TYPE_3__**,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,char const*,char const*) ; 
 scalar_t__ FUNC8 (char const*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 

__attribute__((used)) static int FUNC12(
	git_attr_file **out_file,
	git_attr_file_entry **out_entry,
	git_repository *repo,
	git_attr_session *attr_session,
	git_attr_file_source source,
	const char *base,
	const char *filename)
{
	int error = 0;
	git_buf path = GIT_BUF_INIT;
	const char *wd = FUNC10(repo), *relfile;
	git_attr_cache *cache = FUNC9(repo);
	git_attr_file_entry *entry = NULL;
	git_attr_file *file = NULL;

	/* join base and path as needed */
	if (base != NULL && FUNC8(filename) < 0) {
		git_buf *p = attr_session ? &attr_session->tmp : &path;

		if (FUNC7(p, base, filename) < 0)
			return -1;

		filename = p->ptr;
	}

	relfile = filename;
	if (wd && !FUNC5(relfile, wd))
		relfile += FUNC11(wd);

	/* check cache for existing entry */
	if ((error = FUNC1(cache)) < 0)
		goto cleanup;

	entry = FUNC2(cache, relfile);
	if (!entry)
		error = FUNC3(&entry, repo, relfile);
	else if (entry->file[source] != NULL) {
		file = entry->file[source];
		FUNC0(file);
	}

	FUNC4(cache);

cleanup:
	*out_file  = file;
	*out_entry = entry;

	FUNC6(&path);
	return error;
}