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
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

void FUNC4(void)
{
	git_oid result, one, two, expected;

	FUNC1(FUNC3(&one, "a4a7dce85cf63874e984719f4fdd239f5145052f"));
	FUNC1(FUNC3(&two, "be3563ae3f795b2b4353bcce3a527ad0a4f7f644"));
	FUNC1(FUNC3(&expected, "c47800c7266a2be04c571c04d5a6614691ea99bd"));

	FUNC1(FUNC2(&result, _repo, &one, &two));
	FUNC0(&expected, &result);
}