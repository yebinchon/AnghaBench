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
typedef  int /*<<< orphan*/  git_offmap ;
typedef  int /*<<< orphan*/  git_off_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 void* FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  off ; 

void *FUNC4(git_offmap *map, const git_off_t key)
{
	size_t idx = FUNC2(off, map, key);
	if (idx == FUNC0(map) || !FUNC1(map, idx))
		return NULL;
	return FUNC3(map, idx);
}