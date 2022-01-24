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

/* Variables and functions */
 size_t FUNC0 (size_t*) ; 
 int /*<<< orphan*/  commit ; 
 int /*<<< orphan*/  one ; 
 int /*<<< orphan*/  some ; 
 int /*<<< orphan*/  tag ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  tree ; 
 int /*<<< orphan*/  two ; 
 int /*<<< orphan*/  zero ; 

void FUNC2(void)
{
	size_t blocksizes[] = { 1, 2, 4, 16, 99, 1024, 123456789 };
	size_t i;

	for (i = 0; i < FUNC0(blocksizes); i++) {
		FUNC1(&commit, blocksizes[i]);
		FUNC1(&tree, blocksizes[i]);
		FUNC1(&tag, blocksizes[i]);
		FUNC1(&zero, blocksizes[i]);
		FUNC1(&one, blocksizes[i]);
		FUNC1(&two, blocksizes[i]);
		FUNC1(&some, blocksizes[i]);
	}
}