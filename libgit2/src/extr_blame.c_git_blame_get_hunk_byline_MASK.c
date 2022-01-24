#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  git_blame_hunk ;
struct TYPE_5__ {int /*<<< orphan*/  hunks; } ;
typedef  TYPE_1__ git_blame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  const* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  hunk_byfinalline_search_cmp ; 

const git_blame_hunk *FUNC3(git_blame *blame, size_t lineno)
{
	size_t i, new_lineno = lineno;
	FUNC0(blame);

	if (!FUNC2(&i, &blame->hunks, hunk_byfinalline_search_cmp, &new_lineno)) {
		return FUNC1(blame, (uint32_t)i);
	}

	return NULL;
}