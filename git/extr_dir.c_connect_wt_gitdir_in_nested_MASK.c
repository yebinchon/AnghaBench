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
struct submodule {int /*<<< orphan*/  name; int /*<<< orphan*/  path; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct repository {TYPE_1__* index; int /*<<< orphan*/  gitdir; } ;
struct cache_entry {int /*<<< orphan*/  name; int /*<<< orphan*/  ce_mode; } ;
struct TYPE_2__ {int cache_nr; struct cache_entry** cache; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct repository*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  null_oid ; 
 int /*<<< orphan*/  FUNC5 (struct repository*) ; 
 scalar_t__ FUNC6 (struct repository*,char const*,char const*) ; 
 scalar_t__ FUNC7 (struct repository*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct submodule* FUNC12 (struct repository*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(const char *sub_worktree,
					const char *sub_gitdir)
{
	int i;
	struct repository subrepo;
	struct strbuf sub_wt = STRBUF_INIT;
	struct strbuf sub_gd = STRBUF_INIT;

	const struct submodule *sub;

	/* If the submodule has no working tree, we can ignore it. */
	if (FUNC6(&subrepo, sub_gitdir, sub_worktree))
		return;

	if (FUNC7(&subrepo) < 0)
		FUNC3(FUNC1("index file corrupt in repo %s"), subrepo.gitdir);

	for (i = 0; i < subrepo.index->cache_nr; i++) {
		const struct cache_entry *ce = subrepo.index->cache[i];

		if (!FUNC0(ce->ce_mode))
			continue;

		while (i + 1 < subrepo.index->cache_nr &&
		       !FUNC11(ce->name, subrepo.index->cache[i + 1]->name))
			/*
			 * Skip entries with the same name in different stages
			 * to make sure an entry is returned only once.
			 */
			i++;

		sub = FUNC12(&subrepo, &null_oid, ce->name);
		if (!sub || !FUNC4(&subrepo, ce->name))
			/* .gitmodules broken or inactive sub */
			continue;

		FUNC10(&sub_wt);
		FUNC10(&sub_gd);
		FUNC8(&sub_wt, "%s/%s", sub_worktree, sub->path);
		FUNC8(&sub_gd, "%s/modules/%s", sub_gitdir, sub->name);

		FUNC2(sub_wt.buf, sub_gd.buf, 1);
	}
	FUNC9(&sub_wt);
	FUNC9(&sub_gd);
	FUNC5(&subrepo);
}