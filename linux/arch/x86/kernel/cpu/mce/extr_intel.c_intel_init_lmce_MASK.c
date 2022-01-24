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
typedef  int u64 ;

/* Variables and functions */
 int MCG_EXT_CTL_LMCE_EN ; 
 int /*<<< orphan*/  MSR_IA32_MCG_EXT_CTL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(void)
{
	u64 val;

	if (!FUNC0())
		return;

	FUNC1(MSR_IA32_MCG_EXT_CTL, val);

	if (!(val & MCG_EXT_CTL_LMCE_EN))
		FUNC2(MSR_IA32_MCG_EXT_CTL, val | MCG_EXT_CTL_LMCE_EN);
}