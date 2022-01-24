#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_patch ;
struct TYPE_2__ {int /*<<< orphan*/  patches; } ;
typedef  TYPE_1__ git_diff_parsed ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t) ; 

int FUNC2(git_patch **out, git_diff *d, size_t idx)
{
	git_diff_parsed *diff = (git_diff_parsed *)d;
	git_patch *p;

	if ((p = FUNC1(&diff->patches, idx)) == NULL)
		return -1;

	FUNC0(p);
	*out = p;

	return 0;
}