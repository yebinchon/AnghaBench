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
 int FUNC0 (int /*<<< orphan*/ *,struct opts*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct opts*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct opts*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct opts*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct opts*) ; 
 int /*<<< orphan*/  FUNC5 (struct opts*,int,char**) ; 
#define  subcmd_add 132 
#define  subcmd_remove 131 
#define  subcmd_rename 130 
#define  subcmd_seturl 129 
#define  subcmd_show 128 

int FUNC6(git_repository *repo, int argc, char *argv[])
{
	int retval = 0;
	struct opts opt = {0};

	FUNC5(&opt, argc, argv);

	switch (opt.cmd)
	{
	case subcmd_add:
		retval = FUNC0(repo, &opt);
		break;
	case subcmd_remove:
		retval = FUNC1(repo, &opt);
		break;
	case subcmd_rename:
		retval = FUNC2(repo, &opt);
		break;
	case subcmd_seturl:
		retval = FUNC3(repo, &opt);
		break;
	case subcmd_show:
		retval = FUNC4(repo, &opt);
		break;
	}

	return retval;
}