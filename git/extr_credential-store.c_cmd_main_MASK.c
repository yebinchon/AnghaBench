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
struct string_list {int /*<<< orphan*/  nr; } ;
struct option {int dummy; } ;
struct credential {int dummy; } ;

/* Variables and functions */
 struct credential CREDENTIAL_INIT ; 
 struct option FUNC0 () ; 
 struct option FUNC1 (int /*<<< orphan*/ ,char*,char**,char*,char*) ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 scalar_t__ FUNC2 (struct credential*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct string_list*,struct credential*) ; 
 int FUNC6 (int,char const**,int /*<<< orphan*/ *,struct option*,char const* const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct string_list*,struct credential*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC8 (struct string_list*,struct credential*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct string_list*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct string_list*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char const* const*,struct option*) ; 
 char* FUNC15 (char*) ; 

int FUNC16(int argc, const char **argv)
{
	const char * const usage[] = {
		"git credential-store [<options>] <action>",
		NULL
	};
	const char *op;
	struct credential c = CREDENTIAL_INIT;
	struct string_list fns = STRING_LIST_INIT_DUP;
	char *file = NULL;
	struct option options[] = {
		FUNC1(0, "file", &file, "path",
			   "fetch and store credentials in <path>"),
		FUNC0()
	};

	FUNC13(077);

	argc = FUNC6(argc, (const char **)argv, NULL, options, usage, 0);
	if (argc != 1)
		FUNC14(usage, options);
	op = argv[0];

	if (file) {
		FUNC10(&fns, file);
	} else {
		if ((file = FUNC4("~/.git-credentials", 0)))
			FUNC11(&fns, file);
		file = FUNC15("credentials");
		if (file)
			FUNC11(&fns, file);
	}
	if (!fns.nr)
		FUNC3("unable to set up default path; use --file");

	if (FUNC2(&c, stdin) < 0)
		FUNC3("unable to read credential");

	if (!FUNC9(op, "get"))
		FUNC5(&fns, &c);
	else if (!FUNC9(op, "erase"))
		FUNC7(&fns, &c);
	else if (!FUNC9(op, "store"))
		FUNC8(&fns, &c);
	else
		; /* Ignore unknown operation. */

	FUNC12(&fns, 0);
	return 0;
}