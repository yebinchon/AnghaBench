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
struct submodule {int dummy; } ;
struct repository {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char const**,char*) ; 
 int /*<<< orphan*/  null_oid ; 
 int /*<<< orphan*/  FUNC1 (struct repository*,char const*) ; 
 scalar_t__ FUNC2 (struct repository*,int /*<<< orphan*/ ,struct submodule const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct submodule* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC6(int argc, const char **argv)
{
	struct repository subrepo;
	const struct submodule *sub;

	if (argc < 3)
		FUNC0(argc, argv, "Wrong number of arguments.");

	FUNC3();

	sub = FUNC5(the_repository, &null_oid, argv[1]);
	if (FUNC2(&subrepo, the_repository, sub)) {
		FUNC0(argc, argv, "Submodule not found.");
	}

	/* Read the config of _child_ submodules. */
	FUNC1(&subrepo, argv[2]);

	FUNC4(the_repository);

	return 0;
}