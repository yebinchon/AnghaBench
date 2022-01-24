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
struct split_index {struct index_state* base; int /*<<< orphan*/  base_oid; } ;
struct index_state {int cache_nr; int /*<<< orphan*/  oid; struct split_index* split_index; scalar_t__ initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct index_state*) ; 
 int FUNC3 (struct index_state*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct index_state*) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct index_state*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*) ; 
 struct index_state* FUNC15 (int,int) ; 
 char* FUNC16 (char*,char const*,char*) ; 

int FUNC17(struct index_state *istate, const char *path,
		    const char *gitdir)
{
	struct split_index *split_index;
	int ret;
	char *base_oid_hex;
	char *base_path;

	/* istate->initialized covers both .git/index and .git/sharedindex.xxx */
	if (istate->initialized)
		return istate->cache_nr;

	/*
	 * TODO trace2: replace "the_repository" with the actual repo instance
	 * that is associated with the given "istate".
	 */
	FUNC11("index", "do_read_index", the_repository,
				   "%s", path);
	FUNC13();
	ret = FUNC3(istate, path, 0);
	FUNC14("read cache %s", path);
	FUNC12("index", "do_read_index", the_repository,
				   "%s", path);

	split_index = istate->split_index;
	if (!split_index || FUNC6(&split_index->base_oid)) {
		FUNC10(istate);
		return ret;
	}

	FUNC13();
	if (split_index->base)
		FUNC2(split_index->base);
	else
		split_index->base = FUNC15(1, sizeof(*split_index->base));

	base_oid_hex = FUNC8(&split_index->base_oid);
	base_path = FUNC16("%s/sharedindex.%s", gitdir, base_oid_hex);
	FUNC11("index", "shared/do_read_index",
				   the_repository, "%s", base_path);
	ret = FUNC3(split_index->base, base_path, 1);
	FUNC12("index", "shared/do_read_index",
				   the_repository, "%s", base_path);
	if (!FUNC9(&split_index->base_oid, &split_index->base->oid))
		FUNC1(FUNC0("broken index, expect %s in %s, got %s"),
		    base_oid_hex, base_path,
		    FUNC8(&split_index->base->oid));

	FUNC5(base_path, 0);
	FUNC7(istate);
	FUNC10(istate);
	FUNC14("read cache %s", base_path);
	FUNC4(base_path);
	return ret;
}