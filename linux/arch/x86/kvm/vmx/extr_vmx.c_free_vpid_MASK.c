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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  enable_vpid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vmx_vpid_bitmap ; 
 int /*<<< orphan*/  vmx_vpid_lock ; 

void FUNC3(int vpid)
{
	if (!enable_vpid || vpid == 0)
		return;
	FUNC1(&vmx_vpid_lock);
	FUNC0(vpid, vmx_vpid_bitmap);
	FUNC2(&vmx_vpid_lock);
}