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
struct rev_info {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct commit* FUNC2 (struct rev_info*) ; 
 scalar_t__ FUNC3 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct commit*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,char const**,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC8(void)
{
	struct rev_info rev;
	struct commit *commit;
	const char *argv[] = {NULL, "--all", NULL};
	int argc = FUNC0(argv) - 1;
	int got_revision = 0;

	FUNC5(the_repository, &rev, NULL);
	FUNC7(argc, argv, &rev, NULL);
	if (FUNC3(&rev))
		FUNC1("revision walk setup failed");

	while ((commit = FUNC2(&rev)) != NULL) {
		FUNC4(commit);
		got_revision = 1;
	}

	FUNC6();
	return got_revision;
}