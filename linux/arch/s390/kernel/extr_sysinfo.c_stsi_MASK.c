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
 int FUNC0 (void*,int,int,int,int*) ; 

int FUNC1(void *sysinfo, int fc, int sel1, int sel2)
{
	int lvl, rc;

	rc = FUNC0(sysinfo, fc, sel1, sel2, &lvl);
	if (rc)
		return rc;
	return fc ? 0 : lvl;
}