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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP4430_PRM_PARTITION ; 
 scalar_t__ PRM_INSTANCE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 

void FUNC2(u32 val, u8 offset)
{
	s32 inst = FUNC1();

	if (inst == PRM_INSTANCE_UNKNOWN)
		return;

	FUNC0(val, OMAP4430_PRM_PARTITION,
				     inst, offset);
}