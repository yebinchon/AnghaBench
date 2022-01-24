#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t size; char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  BIG_STRING_PART ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(void)
{
	git_buf in = GIT_BUF_INIT;
	size_t scan, target;

	for (target = 1024; target <= 1024 * 1024 * 4; target *= 8) {

		/* make a big string that's easy to compress */
		FUNC2(&in);
		while (in.size < target)
			FUNC0(
				FUNC4(&in, BIG_STRING_PART, FUNC7(BIG_STRING_PART)));

		FUNC1(&in);

		/* make a big string that's hard to compress */
		FUNC6(0xabad1dea);
		for (scan = 0; scan < in.size; ++scan)
			in.ptr[scan] = (char)FUNC5();

		FUNC1(&in);
	}

	FUNC3(&in);
}