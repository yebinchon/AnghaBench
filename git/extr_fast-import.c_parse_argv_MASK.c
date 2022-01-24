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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  fast_import_usage ; 
 unsigned int global_argc ; 
 char** global_argv ; 
 scalar_t__ import_marks_file ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int seen_data_command ; 
 scalar_t__ FUNC5 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
	unsigned int i;

	for (i = 1; i < global_argc; i++) {
		const char *a = global_argv[i];

		if (*a != '-' || !FUNC6(a, "--"))
			break;

		if (!FUNC5(a, "--", &a))
			FUNC0("unknown option %s", a);

		if (FUNC3(a))
			continue;

		if (FUNC2(a, 0))
			continue;

		if (FUNC5(a, "cat-blob-fd=", &a)) {
			FUNC1(a);
			continue;
		}

		FUNC0("unknown option --%s", a);
	}
	if (i != global_argc)
		FUNC7(fast_import_usage);

	seen_data_command = 1;
	if (import_marks_file)
		FUNC4();
}