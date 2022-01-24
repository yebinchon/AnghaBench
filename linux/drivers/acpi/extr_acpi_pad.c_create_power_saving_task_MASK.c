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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,void*,char*,size_t) ; 
 int /*<<< orphan*/  power_saving_thread ; 
 size_t ps_tsk_num ; 
 int /*<<< orphan*/ ** ps_tsks ; 

__attribute__((used)) static int FUNC3(void)
{
	int rc;

	ps_tsks[ps_tsk_num] = FUNC2(power_saving_thread,
		(void *)(unsigned long)ps_tsk_num,
		"acpi_pad/%d", ps_tsk_num);

	if (FUNC0(ps_tsks[ps_tsk_num])) {
		rc = FUNC1(ps_tsks[ps_tsk_num]);
		ps_tsks[ps_tsk_num] = NULL;
	} else {
		rc = 0;
		ps_tsk_num++;
	}

	return rc;
}