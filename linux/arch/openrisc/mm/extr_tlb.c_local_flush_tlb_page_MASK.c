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
struct vm_area_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ have_dtlbeir ; 
 scalar_t__ have_itlbeir ; 

void FUNC4(struct vm_area_struct *vma, unsigned long addr)
{
	if (have_dtlbeir)
		FUNC0(addr);
	else
		FUNC1(addr);

	if (have_itlbeir)
		FUNC2(addr);
	else
		FUNC3(addr);
}