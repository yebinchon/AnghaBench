#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_strmap ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_config_iterator ;
struct TYPE_9__ {int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_config_entry ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_10__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ERROR_NOMEMORY ; 
 int /*<<< orphan*/  GIT_ERROR_SUBMODULE ; 
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int FUNC8 (TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ **) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC14 (int /*<<< orphan*/ ,char) ; 
 char* FUNC15 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static int FUNC16(git_strmap **out, git_repository *repo, git_config *cfg)
{
	const char *key = "submodule\\..*\\.path";
	git_config_iterator *iter = NULL;
	git_config_entry *entry;
	git_buf buf = GIT_BUF_INIT;
	git_strmap *names;
	int isvalid, error;

	*out = NULL;

	if ((error = FUNC11(&names)) < 0)
		goto out;

	if ((error = FUNC7(&iter, cfg, key)) < 0)
		goto out;

	while ((error = FUNC8(&entry, iter)) == 0) {
		const char *fdot, *ldot;
		fdot = FUNC14(entry->name, '.');
		ldot = FUNC15(entry->name, '.');

		if (FUNC10(names, entry->value)) {
			FUNC9(GIT_ERROR_SUBMODULE,
				   "duplicated submodule path '%s'", entry->value);
			error = -1;
			goto out;
		}

		FUNC2(&buf);
		FUNC5(&buf, fdot + 1, ldot - fdot - 1);
		isvalid = FUNC13(repo, buf.ptr, 0);
		if (isvalid < 0) {
			error = isvalid;
			goto out;
		}
		if (!isvalid)
			continue;

		if ((error = FUNC12(names, FUNC1(entry->value), FUNC3(&buf))) < 0) {
			FUNC9(GIT_ERROR_NOMEMORY, "error inserting submodule into hash table");
			error = -1;
			goto out;
		}
	}
	if (error == GIT_ITEROVER)
		error = 0;

	*out = names;
	names = NULL;

out:
	FUNC0(names);
	FUNC4(&buf);
	FUNC6(iter);
	return error;
}