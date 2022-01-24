#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct opts {int argc; char** argv; } ;
struct TYPE_6__ {char** strings; scalar_t__ count; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ git_strarray ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_remote ;
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 

__attribute__((used)) static int FUNC10(git_repository *repo, struct opts *o)
{
	int i;
	const char *arg, *name, *fetch, *push;
	int verbose = 0;
	git_strarray remotes = {0};
	git_remote *remote = {0};

	for (i = 0; i < o->argc; i++) {
		arg = o->argv[i];

		if (!FUNC9(arg, "-v") || !FUNC9(arg, "--verbose")) {
			verbose = 1;
		}
	}

	FUNC0(FUNC2(&remotes, repo),
		"could not retrieve remotes", NULL);

	for (i = 0; i < (int) remotes.count; i++) {
		name = remotes.strings[i];
		if (!verbose) {
			FUNC8(name);
			continue;
		}

		FUNC0(FUNC3(&remote, repo, name),
			"could not look up remote", name);

		fetch = FUNC5(remote);
		if (fetch)
			FUNC7("%s\t%s (fetch)\n", name, fetch);
		push = FUNC4(remote);
		/* use fetch URL if no distinct push URL has been set */
		push = push ? push : fetch;
		if (push)
			FUNC7("%s\t%s (push)\n", name, push);

		FUNC1(remote);
	}

	FUNC6(&remotes);

	return 0;
}