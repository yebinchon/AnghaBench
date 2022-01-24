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
struct opts {int argc; char** argv; } ;
struct TYPE_4__ {int /*<<< orphan*/ * strings; scalar_t__ count; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(git_repository *repo, struct opts *o)
{
	int i, retval;
	char *old, *new;
	git_strarray problems = {0};

	if (o->argc != 2)
		FUNC3("you need to specify old and new remote name", NULL);

	old = o->argv[0];
	new = o->argv[1];

	retval = FUNC0(&problems, repo, old, new);
	if (!retval)
		return 0;

	for (i = 0; i < (int) problems.count; i++) {
		FUNC2(problems.strings[0]);
	}

	FUNC1(&problems);

	return retval;
}