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
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 

int FUNC2(git_repository *repo, int argc, char **argv)
{
	int error;

	if (argc < 2) {
		FUNC0(stderr, "usage: %s ls-remote <remote>\n", argv[-1]);
		return EXIT_FAILURE;
	}

	error = FUNC1(repo, argv[1]);

	return error;
}