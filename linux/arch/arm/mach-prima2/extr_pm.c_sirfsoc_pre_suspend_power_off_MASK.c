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
 int /*<<< orphan*/  SIRFSOC_DEEP_SLEEP_MODE ; 
 scalar_t__ SIRFSOC_PWRC_SCRATCH_PAD1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_resume ; 
 scalar_t__ sirfsoc_pwrc_base ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(void)
{
	u32 wakeup_entry = FUNC0(cpu_resume);

	FUNC1(wakeup_entry, sirfsoc_pwrc_base +
		SIRFSOC_PWRC_SCRATCH_PAD1);

	FUNC3();

	FUNC2(SIRFSOC_DEEP_SLEEP_MODE);

	return 0;
}