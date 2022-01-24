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
struct submodule {char* url; char* path; char* name; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char const**,char*) ; 
 scalar_t__ FUNC1 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct submodule* FUNC8 (int /*<<< orphan*/ ,struct object_id*,char const*) ; 
 struct submodule* FUNC9 (int /*<<< orphan*/ ,struct object_id*,char const*) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC10(int argc, const char **argv)
{
	const char **arg = argv;
	int my_argc = argc;
	int output_url = 0;
	int lookup_name = 0;

	arg++;
	my_argc--;
	while (arg[0] && FUNC5(arg[0], "--")) {
		if (!FUNC6(arg[0], "--url"))
			output_url = 1;
		if (!FUNC6(arg[0], "--name"))
			lookup_name = 1;
		arg++;
		my_argc--;
	}

	if (my_argc % 2 != 0)
		FUNC0(argc, argv, "Wrong number of arguments.");

	FUNC4();

	while (*arg) {
		struct object_id commit_oid;
		const struct submodule *submodule;
		const char *commit;
		const char *path_or_name;

		commit = arg[0];
		path_or_name = arg[1];

		if (commit[0] == '\0')
			FUNC2(&commit_oid);
		else if (FUNC1(commit, &commit_oid) < 0)
			FUNC0(argc, argv, "Commit not found.");

		if (lookup_name) {
			submodule = FUNC8(the_repository,
							&commit_oid, path_or_name);
		} else
			submodule = FUNC9(the_repository,
							&commit_oid, path_or_name);
		if (!submodule)
			FUNC0(argc, argv, "Submodule not found.");

		if (output_url)
			FUNC3("Submodule url: '%s' for path '%s'\n",
					submodule->url, submodule->path);
		else
			FUNC3("Submodule name: '%s' for path '%s'\n",
					submodule->name, submodule->path);

		arg += 2;
	}

	FUNC7(the_repository);

	return 0;
}