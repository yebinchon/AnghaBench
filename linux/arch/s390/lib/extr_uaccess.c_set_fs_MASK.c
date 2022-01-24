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
struct TYPE_6__ {int /*<<< orphan*/  kernel_asce; int /*<<< orphan*/  user_asce; } ;
struct TYPE_4__ {int mm_segment; } ;
struct TYPE_5__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIF_ASCE_PRIMARY ; 
 int /*<<< orphan*/  CIF_ASCE_SECONDARY ; 
 TYPE_3__ S390_lowcore ; 
 int USER_DS ; 
 int USER_DS_SACF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(mm_segment_t fs)
{
	current->thread.mm_segment = fs;
	if (fs == USER_DS) {
		FUNC0(S390_lowcore.user_asce, 1, 1);
		FUNC1(CIF_ASCE_PRIMARY);
	} else {
		FUNC0(S390_lowcore.kernel_asce, 1, 1);
		FUNC2(CIF_ASCE_PRIMARY);
	}
	if (fs & 1) {
		if (fs == USER_DS_SACF)
			FUNC0(S390_lowcore.user_asce, 7, 7);
		else
			FUNC0(S390_lowcore.kernel_asce, 7, 7);
		FUNC2(CIF_ASCE_SECONDARY);
	}
}