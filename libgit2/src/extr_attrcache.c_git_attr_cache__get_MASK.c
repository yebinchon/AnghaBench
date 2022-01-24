#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_attr_session ;
typedef  int /*<<< orphan*/  git_attr_file_source ;
typedef  int /*<<< orphan*/  git_attr_file_parser ;
typedef  int /*<<< orphan*/  git_attr_file_entry ;
typedef  int /*<<< orphan*/  git_attr_file ;
typedef  int /*<<< orphan*/  git_attr_cache ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(
	git_attr_file **out,
	git_repository *repo,
	git_attr_session *attr_session,
	git_attr_file_source source,
	const char *base,
	const char *filename,
	git_attr_file_parser parser,
	bool allow_macros)
{
	int error = 0;
	git_attr_cache *cache = FUNC7(repo);
	git_attr_file_entry *entry = NULL;
	git_attr_file *file = NULL, *updated = NULL;

	if ((error = FUNC0(
			&file, &entry, repo, attr_session, source, base, filename)) < 0)
		return error;

	/* load file if we don't have one or if existing one is out of date */
	if (!file || (error = FUNC5(repo, attr_session, file)) > 0)
		error = FUNC4(&updated, repo, attr_session, entry, source, parser, allow_macros);

	/* if we loaded the file, insert into and/or update cache */
	if (updated) {
		if ((error = FUNC2(cache, updated)) < 0)
			FUNC3(updated);
		else {
			FUNC3(file); /* offset incref from lookup */
			file = updated;
		}
	}

	/* if file could not be loaded */
	if (error < 0) {
		/* remove existing entry */
		if (file) {
			FUNC1(cache, file);
			FUNC3(file); /* offset incref from lookup */
			file = NULL;
		}
		/* no error if file simply doesn't exist */
		if (error == GIT_ENOTFOUND) {
			FUNC6();
			error = 0;
		}
	}

	*out = file;
	return error;
}