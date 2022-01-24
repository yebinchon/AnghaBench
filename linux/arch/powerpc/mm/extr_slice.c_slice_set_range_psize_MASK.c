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
struct slice_mask {int dummy; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,struct slice_mask*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long,struct slice_mask*) ; 

void FUNC4(struct mm_struct *mm, unsigned long start,
			   unsigned long len, unsigned int psize)
{
	struct slice_mask mask;

	FUNC0(FUNC1());

	FUNC3(start, len, &mask);
	FUNC2(mm, &mask, psize);
}