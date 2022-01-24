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
typedef  int /*<<< orphan*/  khiter_t ;
typedef  int /*<<< orphan*/  git_idxmap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  idx ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(git_idxmap *map, size_t size)
{
	if (!FUNC0(size) ||
	    FUNC2(idx, map, (khiter_t)size) < 0) {
		FUNC1();
		return -1;
	}
	return 0;
}