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
struct mm_struct {int dummy; } ;

/* Variables and functions */
 unsigned long SLICE_LOW_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct mm_struct*,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC1(struct mm_struct *mm, unsigned long slice)
{
	return !FUNC0(mm, slice << SLICE_LOW_SHIFT,
				   1ul << SLICE_LOW_SHIFT);
}