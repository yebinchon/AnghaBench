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
 int /*<<< orphan*/  USBDEVFS_RESET ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 char* FUNC2 (int) ; 

void FUNC3(int fd)
{
	int res;

	res = FUNC0(fd, USBDEVFS_RESET);
	if (!res)
		FUNC1("OK: USBDEVFS_RESET succeeded\n");
	else
		FUNC1("ERROR: reset failed! (%d - %s)\n",
		       -res, FUNC2(-res));
}