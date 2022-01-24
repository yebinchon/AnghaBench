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
 int /*<<< orphan*/ * ccgr ; 
 int /*<<< orphan*/  cscdr1 ; 
 int /*<<< orphan*/  cscdr2 ; 
 int /*<<< orphan*/  cscdr3 ; 
 int /*<<< orphan*/  cscmr1 ; 
 int /*<<< orphan*/  cscmr2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	int i;

	FUNC1(cscmr1, CCM_CSCMR1);
	FUNC1(cscmr2, CCM_CSCMR2);

	FUNC1(cscdr1, CCM_CSCDR1);
	FUNC1(cscdr2, CCM_CSCDR2);
	FUNC1(cscdr3, CCM_CSCDR3);

	for (i = 0; i < 12; i++)
		FUNC1(ccgr[i], FUNC0(i));
}