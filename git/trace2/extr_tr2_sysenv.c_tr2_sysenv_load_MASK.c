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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ TR2_SYSENV_MUST_BE_LAST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tr2_sysenv_cb ; 
 int /*<<< orphan*/  tr2_sysenv_settings ; 

void FUNC3(void)
{
	if (FUNC0(tr2_sysenv_settings) != TR2_SYSENV_MUST_BE_LAST)
		FUNC1("tr2_sysenv_settings size is wrong");

	FUNC2(tr2_sysenv_cb, NULL);
}