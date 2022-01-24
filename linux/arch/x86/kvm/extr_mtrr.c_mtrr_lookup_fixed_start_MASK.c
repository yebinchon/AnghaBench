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
struct mtrr_iter {int fixed; int index; int seg; int /*<<< orphan*/  start; int /*<<< orphan*/  mtrr_state; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct mtrr_iter *iter)
{
	int seg, index;

	if (!FUNC2(iter->mtrr_state))
		return false;

	seg = FUNC1(iter->start);
	if (seg < 0)
		return false;

	iter->fixed = true;
	index = FUNC0(iter->start, seg);
	iter->index = index;
	iter->seg = seg;
	return true;
}