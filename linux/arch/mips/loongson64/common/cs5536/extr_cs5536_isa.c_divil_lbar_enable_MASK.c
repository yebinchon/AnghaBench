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
typedef  int u32 ;

/* Variables and functions */
 int DIVIL_LBAR_PMS ; 
 int DIVIL_LBAR_SMB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(void)
{
	u32 hi, lo;
	int offset;

	/*
	 * The DIVIL IRQ is not used yet. and make the RCONF0 reserved.
	 */

	for (offset = DIVIL_LBAR_SMB; offset <= DIVIL_LBAR_PMS; offset++) {
		FUNC1(FUNC0(offset), &hi, &lo);
		hi |= 0x01;
		FUNC2(FUNC0(offset), hi, lo);
	}
}