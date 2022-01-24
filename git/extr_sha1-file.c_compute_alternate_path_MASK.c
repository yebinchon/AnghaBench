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
struct strbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  F_OK ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct strbuf*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 char* FUNC6 (char*,char*) ; 
 char* FUNC7 (char*,char*) ; 
 char* FUNC8 (char*) ; 
 char* FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC11 (char const*) ; 

char *FUNC12(const char *path, struct strbuf *err)
{
	char *ref_git = NULL;
	const char *repo, *ref_git_s;
	int seen_error = 0;

	ref_git_s = FUNC9(path);
	if (!ref_git_s) {
		seen_error = 1;
		FUNC10(err, FUNC1("path '%s' does not exist"), path);
		goto out;
	} else
		/*
		 * Beware: read_gitfile(), real_path() and mkpath()
		 * return static buffer
		 */
		ref_git = FUNC11(ref_git_s);

	repo = FUNC8(ref_git);
	if (!repo)
		repo = FUNC8(FUNC6("%s/.git", ref_git));
	if (repo) {
		FUNC3(ref_git);
		ref_git = FUNC11(repo);
	}

	if (!repo && FUNC5(FUNC6("%s/.git/objects", ref_git))) {
		char *ref_git_git = FUNC7("%s/.git", ref_git);
		FUNC3(ref_git);
		ref_git = ref_git_git;
	} else if (!FUNC5(FUNC6("%s/objects", ref_git))) {
		struct strbuf sb = STRBUF_INIT;
		seen_error = 1;
		if (FUNC4(&sb, ref_git)) {
			FUNC10(err,
				    FUNC1("reference repository '%s' as a linked "
				      "checkout is not supported yet."),
				    path);
			goto out;
		}

		FUNC10(err, FUNC1("reference repository '%s' is not a "
					"local repository."), path);
		goto out;
	}

	if (!FUNC2(FUNC6("%s/shallow", ref_git), F_OK)) {
		FUNC10(err, FUNC1("reference repository '%s' is shallow"),
			    path);
		seen_error = 1;
		goto out;
	}

	if (!FUNC2(FUNC6("%s/info/grafts", ref_git), F_OK)) {
		FUNC10(err,
			    FUNC1("reference repository '%s' is grafted"),
			    path);
		seen_error = 1;
		goto out;
	}

out:
	if (seen_error) {
		FUNC0(ref_git);
	}

	return ref_git;
}