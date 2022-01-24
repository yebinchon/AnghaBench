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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  USBDEVFS_DROP_PRIVILEGES ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(int fd, uint32_t mask)
{
	int res;

	res = FUNC0(fd, USBDEVFS_DROP_PRIVILEGES, &mask);
	if (res)
		FUNC1("ERROR: USBDEVFS_DROP_PRIVILEGES returned %d\n", res);
	else
		FUNC1("OK: privileges dropped!\n");
}