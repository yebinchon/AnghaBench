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
struct walker {int get_verbosely; int get_recover; scalar_t__ corrupt_object_found; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct walker* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  http_fetch_usage ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct walker*,int,char**,char const**,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct walker*) ; 
 int /*<<< orphan*/  FUNC12 (int,char**,char const**) ; 
 int FUNC13 (char***,char const***) ; 

int FUNC14(int argc, const char **argv)
{
	struct walker *walker;
	int commits_on_stdin = 0;
	int commits;
	const char **write_ref = NULL;
	char **commit_id;
	char *url = NULL;
	int arg = 1;
	int rc = 0;
	int get_verbosely = 0;
	int get_recover = 0;

	while (arg < argc && argv[arg][0] == '-') {
		if (argv[arg][1] == 't') {
		} else if (argv[arg][1] == 'c') {
		} else if (argv[arg][1] == 'a') {
		} else if (argv[arg][1] == 'v') {
			get_verbosely = 1;
		} else if (argv[arg][1] == 'w') {
			write_ref = &argv[arg + 1];
			arg++;
		} else if (argv[arg][1] == 'h') {
			FUNC9(http_fetch_usage);
		} else if (!FUNC8(argv[arg], "--recover")) {
			get_recover = 1;
		} else if (!FUNC8(argv[arg], "--stdin")) {
			commits_on_stdin = 1;
		}
		arg++;
	}
	if (argc != arg + 2 - commits_on_stdin)
		FUNC9(http_fetch_usage);
	if (commits_on_stdin) {
		commits = FUNC13(&commit_id, &write_ref);
	} else {
		commit_id = (char **) &argv[arg++];
		commits = 1;
	}

	if (argv[arg])
		FUNC7(argv[arg], &url);

	FUNC6();

	FUNC3(git_default_config, NULL);

	FUNC5(NULL, url, 0);
	walker = FUNC2(url);
	walker->get_verbosely = get_verbosely;
	walker->get_recover = get_recover;

	rc = FUNC10(walker, commits, commit_id, write_ref, url);

	if (commits_on_stdin)
		FUNC12(commits, commit_id, write_ref);

	if (walker->corrupt_object_found) {
		FUNC0(stderr,
"Some loose object were found to be corrupt, but they might be just\n"
"a false '404 Not Found' error message sent with incorrect HTTP\n"
"status code.  Suggest running 'git fsck'.\n");
	}

	FUNC11(walker);
	FUNC4();

	FUNC1(url);

	return rc;
}