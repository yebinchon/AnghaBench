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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_OP2_BCR ; 
 int /*<<< orphan*/  ARM_OP2_BVR ; 
 int /*<<< orphan*/  ARM_OP2_WCR ; 
 int /*<<< orphan*/  ARM_OP2_WVR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void FUNC3(int n, u32 val)
{
	switch (n) {
	FUNC0(ARM_OP2_BVR, val);
	FUNC0(ARM_OP2_BCR, val);
	FUNC0(ARM_OP2_WVR, val);
	FUNC0(ARM_OP2_WCR, val);
	default:
		FUNC2("attempt to write to unknown breakpoint register %d\n",
			n);
	}
	FUNC1();
}