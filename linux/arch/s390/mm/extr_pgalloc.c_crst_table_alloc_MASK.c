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
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct page* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int) ; 
 scalar_t__ FUNC2 (struct page*) ; 

unsigned long *FUNC3(struct mm_struct *mm)
{
	struct page *page = FUNC0(GFP_KERNEL, 2);

	if (!page)
		return NULL;
	FUNC1(page, 2);
	return (unsigned long *) FUNC2(page);
}