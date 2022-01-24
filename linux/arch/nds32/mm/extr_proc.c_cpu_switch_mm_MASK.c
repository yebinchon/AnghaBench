#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned long id; } ;
struct mm_struct {int /*<<< orphan*/  pgd; TYPE_1__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  NDS32_SR_L1_PPTB ; 
 int /*<<< orphan*/  NDS32_SR_TLB_MISC ; 
 unsigned long TLB_MISC_mskCID ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct mm_struct *mm)
{
	unsigned long cid;
	cid = FUNC0(NDS32_SR_TLB_MISC);
	cid = (cid & ~TLB_MISC_mskCID) | mm->context.id;
	FUNC1(cid, NDS32_SR_TLB_MISC);
	FUNC2(FUNC3(mm->pgd), NDS32_SR_L1_PPTB);
}