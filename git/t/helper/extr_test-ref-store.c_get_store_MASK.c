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
struct worktree {char* id; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct ref_store {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 struct ref_store* FUNC2 (int /*<<< orphan*/ ) ; 
 struct ref_store* FUNC3 (char const*) ; 
 struct ref_store* FUNC4 (struct worktree*) ; 
 struct worktree** FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char*,char const**) ; 
 int FUNC7 (struct strbuf*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static const char **FUNC10(const char **argv, struct ref_store **refs)
{
	const char *gitdir;

	if (!argv[0]) {
		FUNC1("ref store required");
	} else if (!FUNC9(argv[0], "main")) {
		*refs = FUNC2(the_repository);
	} else if (FUNC6(argv[0], "submodule:", &gitdir)) {
		struct strbuf sb = STRBUF_INIT;
		int ret;

		ret = FUNC7(&sb, gitdir, "objects/");
		if (ret)
			FUNC1("strbuf_git_path_submodule failed: %d", ret);
		FUNC0(sb.buf);
		FUNC8(&sb);

		*refs = FUNC3(gitdir);
	} else if (FUNC6(argv[0], "worktree:", &gitdir)) {
		struct worktree **p, **worktrees = FUNC5(0);

		for (p = worktrees; *p; p++) {
			struct worktree *wt = *p;

			if (!wt->id) {
				/* special case for main worktree */
				if (!FUNC9(gitdir, "main"))
					break;
			} else if (!FUNC9(gitdir, wt->id))
				break;
		}
		if (!*p)
			FUNC1("no such worktree: %s", gitdir);

		*refs = FUNC4(*p);
	} else
		FUNC1("unknown backend %s", argv[0]);

	if (!*refs)
		FUNC1("no ref store");

	/* consume store-specific optional arguments if needed */

	return argv + 1;
}