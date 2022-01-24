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
struct TYPE_2__ {scalar_t__ allow_gmap_hpage_1m; int /*<<< orphan*/  asce; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  IDTE_GLOBAL ; 
 int IDTE_GUEST_ASCE ; 
 int IDTE_NODAT ; 
 scalar_t__ MACHINE_HAS_IDTE ; 
 scalar_t__ MACHINE_HAS_TLB_GUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*,unsigned long) ; 
 scalar_t__ FUNC4 (struct mm_struct*) ; 

__attribute__((used)) static inline void FUNC5(struct mm_struct *mm,
				    unsigned long addr, pmd_t *pmdp)
{
	if (MACHINE_HAS_TLB_GUEST) {
		FUNC1(addr, pmdp, IDTE_NODAT | IDTE_GUEST_ASCE,
			    mm->context.asce, IDTE_GLOBAL);
		if (FUNC4(mm) && mm->context.allow_gmap_hpage_1m)
			FUNC3(mm, addr);
	} else if (MACHINE_HAS_IDTE) {
		FUNC1(addr, pmdp, 0, 0, IDTE_GLOBAL);
		if (FUNC4(mm) && mm->context.allow_gmap_hpage_1m)
			FUNC3(mm, addr);
	} else {
		FUNC0(pmdp);
		if (FUNC4(mm) && mm->context.allow_gmap_hpage_1m)
			FUNC2(mm, addr);
	}
}