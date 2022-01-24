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
typedef  int /*<<< orphan*/  git_refspec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 

int FUNC5(git_refspec **out_refspec, const char *input, int is_fetch)
{
	git_refspec *refspec;
	FUNC1(out_refspec && input);

	*out_refspec = NULL;

	refspec = FUNC3(sizeof(git_refspec));
	FUNC0(refspec);

	if (FUNC4(refspec, input, !!is_fetch) != 0) {
		FUNC2(refspec);
		return -1;
	}

	*out_refspec = refspec;
	return 0;
}