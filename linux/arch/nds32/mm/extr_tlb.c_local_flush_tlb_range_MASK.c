#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {TYPE_2__* vm_mm; } ;
struct TYPE_3__ {unsigned long id; } ;
struct TYPE_4__ {TYPE_1__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  NDS32_SR_TLB_MISC ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned long TLB_MISC_mskCID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  cid_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct vm_area_struct *vma,
			   unsigned long start, unsigned long end)
{
	unsigned long flags, ocid, ncid;

	if ((end - start) > 0x400000) {
		FUNC3();
		FUNC0();
		return;
	}

	FUNC5(&cid_lock, flags);
	ocid = FUNC1(NDS32_SR_TLB_MISC);
	ncid = (ocid & ~TLB_MISC_mskCID) | vma->vm_mm->context.id;
	FUNC2(ncid, NDS32_SR_TLB_MISC);
	while (start < end) {
		FUNC4(start);
		FUNC0();
		start += PAGE_SIZE;
	}
	FUNC2(ocid, NDS32_SR_TLB_MISC);
	FUNC6(&cid_lock, flags);
}