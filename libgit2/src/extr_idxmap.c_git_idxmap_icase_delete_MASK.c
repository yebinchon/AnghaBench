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
typedef  scalar_t__ khiter_t ;
typedef  int /*<<< orphan*/  git_index_entry ;
typedef  int /*<<< orphan*/  git_idxmap_icase ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  idxicase ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

int FUNC3(git_idxmap_icase *map, const git_index_entry *key)
{
	khiter_t idx = FUNC2(idxicase, map, key);
	if (idx == FUNC1(map))
		return GIT_ENOTFOUND;
	FUNC0(idxicase, map, idx);
	return 0;
}