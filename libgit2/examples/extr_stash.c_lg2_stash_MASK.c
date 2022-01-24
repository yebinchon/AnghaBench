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
struct opts {int cmd; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
#define  SUBCMD_APPLY 131 
#define  SUBCMD_LIST 130 
#define  SUBCMD_POP 129 
#define  SUBCMD_PUSH 128 
 int FUNC0 (int /*<<< orphan*/ *,struct opts*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct opts*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct opts*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct opts*) ; 
 int /*<<< orphan*/  FUNC4 (struct opts*,int,char**) ; 

int FUNC5(git_repository *repo, int argc, char *argv[])
{
	struct opts opts = { 0 };

	FUNC4(&opts, argc, argv);

	switch (opts.cmd) {
		case SUBCMD_APPLY:
			return FUNC0(repo, &opts);
		case SUBCMD_LIST:
			return FUNC1(repo, &opts);
		case SUBCMD_PUSH:
			return FUNC3(repo, &opts);
		case SUBCMD_POP:
			return FUNC2(repo, &opts);
	}

	return -1;
}