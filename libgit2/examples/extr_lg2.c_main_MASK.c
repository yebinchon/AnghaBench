#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct args_info {int pos; int argc; char** argv; } ;
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_3__ {char* name; int /*<<< orphan*/  fn; scalar_t__ requires_repo; } ;

/* Variables and functions */
 struct args_info ARGS_INFO_INIT ; 
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 TYPE_1__* commands ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char const**,struct args_info*,char*,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct args_info) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int FUNC11(int argc, char **argv)
{
	struct args_info args = ARGS_INFO_INIT;
	git_repository *repo = NULL;
	const char *git_dir = NULL;
	int return_code = 1;
	size_t i;

	if (argc < 2)
		FUNC10(argv[0]);

	FUNC3();

	for (args.pos = 1; args.pos < args.argc; ++args.pos) {
		char *a = args.argv[args.pos];

		if (a[0] != '-') {
			/* non-arg */
			break;
		} else if (FUNC7(&git_dir, &args, "--git-dir", ".git")) {
			continue;
		} else if (!FUNC9(a, "--")) {
			/* arg separator */
			break;
		}
	}

	if (args.pos == args.argc)
		FUNC10(argv[0]);

	if (!git_dir)
		git_dir = ".";

	for (i = 0; i < FUNC0(commands); ++i) {
		if (FUNC9(args.argv[args.pos], commands[i].name))
			continue;

		/*
		 * Before running the actual command, create an instance
		 * of the local repository and pass it to the function.
		 * */
		if (commands[i].requires_repo) {
			FUNC1(FUNC6(&repo, git_dir, 0, NULL),
				  "Unable to open repository '%s'", git_dir);
		}

		return_code = FUNC8(commands[i].fn, repo, args);
		goto shutdown;
	}

	FUNC2(stderr, "Command not found: %s\n", argv[1]);

shutdown:
	FUNC5(repo);
	FUNC4();

	return return_code;
}