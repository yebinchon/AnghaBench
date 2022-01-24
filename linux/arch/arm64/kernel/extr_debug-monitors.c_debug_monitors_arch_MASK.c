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

/* Variables and functions */
 int /*<<< orphan*/  ID_AA64DFR0_DEBUGVER_SHIFT ; 
 int /*<<< orphan*/  SYS_ID_AA64DFR0_EL1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

u8 FUNC2(void)
{
	return FUNC0(FUNC1(SYS_ID_AA64DFR0_EL1),
						ID_AA64DFR0_DEBUGVER_SHIFT);
}