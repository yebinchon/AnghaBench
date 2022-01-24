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
struct page {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  XENFEAT_auto_translated_physmap ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vm_area_struct*,int,struct page**) ; 

int FUNC2(struct vm_area_struct *vma,
			       int nr, struct page **pages)
{
	if (FUNC0(XENFEAT_auto_translated_physmap))
		return FUNC1(vma, nr, pages);

	if (!pages)
		return 0;

	return -EINVAL;
}