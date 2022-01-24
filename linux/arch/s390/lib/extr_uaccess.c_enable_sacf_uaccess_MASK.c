#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int mm_segment_t ;
struct TYPE_6__ {unsigned long kernel_asce; unsigned long user_asce; } ;
struct TYPE_4__ {int mm_segment; } ;
struct TYPE_5__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIF_ASCE_PRIMARY ; 
 int /*<<< orphan*/  CIF_ASCE_SECONDARY ; 
 TYPE_3__ S390_lowcore ; 
 int USER_DS ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int,int) ; 
 TYPE_2__* current ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

mm_segment_t FUNC4(void)
{
	mm_segment_t old_fs;
	unsigned long asce, cr;

	old_fs = current->thread.mm_segment;
	if (old_fs & 1)
		return old_fs;
	current->thread.mm_segment |= 1;
	asce = S390_lowcore.kernel_asce;
	if (FUNC2(old_fs == USER_DS)) {
		FUNC1(cr, 1, 1);
		if (cr != S390_lowcore.kernel_asce) {
			FUNC0(S390_lowcore.kernel_asce, 1, 1);
			FUNC3(CIF_ASCE_PRIMARY);
		}
		asce = S390_lowcore.user_asce;
	}
	FUNC1(cr, 7, 7);
	if (cr != asce) {
		FUNC0(asce, 7, 7);
		FUNC3(CIF_ASCE_SECONDARY);
	}
	return old_fs;
}