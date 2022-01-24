#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int count; int /*<<< orphan*/ * strings; } ;
typedef  TYPE_1__ git_strarray ;
struct TYPE_6__ {int /*<<< orphan*/  worktree; int /*<<< orphan*/  repo; } ;

/* Variables and functions */
 int GIT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_4__ fixture ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
	git_strarray refs, wtrefs;
	unsigned i, j;
	int error = 0;

	FUNC0(FUNC1(&refs, fixture.repo));
	FUNC0(FUNC1(&wtrefs, fixture.worktree));

	if (refs.count != wtrefs.count)
	{
		error = GIT_ERROR;
		goto exit;
	}

	for (i = 0; i < refs.count; i++)
	{
		int found = 0;

		for (j = 0; j < wtrefs.count; j++)
		{
			if (!FUNC3(refs.strings[i], wtrefs.strings[j]))
			{
				found = 1;
				break;
			}
		}

		if (!found)
		{
			error = GIT_ERROR;
			goto exit;
		}
	}

exit:
	FUNC2(&refs);
	FUNC2(&wtrefs);
	FUNC0(error);
}