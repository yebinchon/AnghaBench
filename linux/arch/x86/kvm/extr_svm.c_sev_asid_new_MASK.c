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
 int EBUSY ; 
 int FUNC0 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int max_sev_asid ; 
 scalar_t__ min_sev_asid ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sev_asid_bitmap ; 

__attribute__((used)) static int FUNC2(void)
{
	int pos;

	/*
	 * SEV-enabled guest must use asid from min_sev_asid to max_sev_asid.
	 */
	pos = FUNC0(sev_asid_bitmap, max_sev_asid, min_sev_asid - 1);
	if (pos >= max_sev_asid)
		return -EBUSY;

	FUNC1(pos, sev_asid_bitmap);
	return pos + 1;
}