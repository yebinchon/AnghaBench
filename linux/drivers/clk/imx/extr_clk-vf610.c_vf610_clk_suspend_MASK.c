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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CCM_CSCDR1 ; 
 int /*<<< orphan*/  CCM_CSCDR2 ; 
 int /*<<< orphan*/  CCM_CSCDR3 ; 
 int /*<<< orphan*/  CCM_CSCMR1 ; 
 int /*<<< orphan*/  CCM_CSCMR2 ; 
 void** ccgr ; 
 void* cscdr1 ; 
 void* cscdr2 ; 
 void* cscdr3 ; 
 void* cscmr1 ; 
 void* cscmr2 ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void)
{
	int i;

	cscmr1 = FUNC1(CCM_CSCMR1);
	cscmr2 = FUNC1(CCM_CSCMR2);

	cscdr1 = FUNC1(CCM_CSCDR1);
	cscdr2 = FUNC1(CCM_CSCDR2);
	cscdr3 = FUNC1(CCM_CSCDR3);

	for (i = 0; i < 12; i++)
		ccgr[i] = FUNC1(FUNC0(i));

	return 0;
}