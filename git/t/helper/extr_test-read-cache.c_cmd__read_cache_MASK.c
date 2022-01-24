#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  REFRESH_QUIET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 int FUNC4 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int FUNC11 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ the_index ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*,int) ; 

int FUNC13(int argc, const char **argv)
{
	int i, cnt = 1;
	const char *name = NULL;

	if (argc > 1 && FUNC9(argv[1], "--print-and-refresh=", &name)) {
		argc--;
		argv++;
	}

	if (argc == 2)
		cnt = FUNC11(argv[1], NULL, 0);
	FUNC8();
	FUNC3(git_default_config, NULL);
	for (i = 0; i < cnt; i++) {
		FUNC6();
		if (name) {
			int pos;

			FUNC7(&the_index, REFRESH_QUIET,
				      NULL, NULL, NULL);
			pos = FUNC4(&the_index, name, FUNC10(name));
			if (pos < 0)
				FUNC1("%s not in index", name);
			FUNC5("%s is%s up to date\n", name,
			       FUNC0(the_index.cache[pos]) ? "" : " not");
			FUNC12(name, "%d\n", i);
		}
		FUNC2();
	}
	return 0;
}