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
 unsigned int GIT_DIRECTION_FETCH ; 
 int /*<<< orphan*/  GIT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 

__attribute__((used)) static void FUNC3(unsigned int direction, const char *input, bool is_expected_to_be_valid)
{
	git_refspec refspec;
	int error;

	error = FUNC2(&refspec, input, direction == GIT_DIRECTION_FETCH);
	FUNC1(&refspec);

	if (is_expected_to_be_valid)
		FUNC0(0, error);
	else
		FUNC0(GIT_ERROR, error);
}