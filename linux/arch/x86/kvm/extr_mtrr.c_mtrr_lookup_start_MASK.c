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
struct mtrr_iter {int mtrr_disabled; int /*<<< orphan*/  mtrr_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtrr_iter*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtrr_iter*) ; 

__attribute__((used)) static void FUNC3(struct mtrr_iter *iter)
{
	if (!FUNC0(iter->mtrr_state)) {
		iter->mtrr_disabled = true;
		return;
	}

	if (!FUNC1(iter))
		FUNC2(iter);
}