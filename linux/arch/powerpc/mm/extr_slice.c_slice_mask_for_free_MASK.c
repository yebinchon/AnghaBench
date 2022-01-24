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
struct slice_mask {unsigned int low_slices; int /*<<< orphan*/  high_slices; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 scalar_t__ SLICE_NUM_HIGH ; 
 unsigned long SLICE_NUM_LOW ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct mm_struct *mm, struct slice_mask *ret,
				unsigned long high_limit)
{
	unsigned long i;

	ret->low_slices = 0;
	if (SLICE_NUM_HIGH)
		FUNC2(ret->high_slices, SLICE_NUM_HIGH);

	for (i = 0; i < SLICE_NUM_LOW; i++)
		if (!FUNC5(mm, i))
			ret->low_slices |= 1u << i;

	if (FUNC3(high_limit - 1))
		return;

	for (i = 0; i < FUNC0(high_limit); i++)
		if (!FUNC4(mm, i))
			FUNC1(i, ret->high_slices);
}