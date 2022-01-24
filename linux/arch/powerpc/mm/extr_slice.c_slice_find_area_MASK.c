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
 unsigned long FUNC0 (struct mm_struct*,unsigned long,struct slice_mask const*,int,unsigned long) ; 
 unsigned long FUNC1 (struct mm_struct*,unsigned long,struct slice_mask const*,int,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC2(struct mm_struct *mm, unsigned long len,
				     const struct slice_mask *mask, int psize,
				     int topdown, unsigned long high_limit)
{
	if (topdown)
		return FUNC1(mm, len, mask, psize, high_limit);
	else
		return FUNC0(mm, len, mask, psize, high_limit);
}