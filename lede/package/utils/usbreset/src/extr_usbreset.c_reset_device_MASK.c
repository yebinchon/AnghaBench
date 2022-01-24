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
struct usbentry {int bus_num; int dev_num; char* product_name; } ;
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int /*<<< orphan*/  O_WRONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  USBDEVFS_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct usbentry *dev)
{
	int fd;
	char path[PATH_MAX];

	FUNC4(path, sizeof(path) - 1, "/dev/bus/usb/%03d/%03d",
	         dev->bus_num, dev->dev_num);

	FUNC3("Resetting %s ... ", dev->product_name);

	if ((fd = FUNC2(path, O_WRONLY)) > -1)
	{
		if (FUNC1(fd, USBDEVFS_RESET, 0) < 0)
			FUNC3("failed [%s]\n", FUNC5(errno));
		else
			FUNC3("ok\n");

		FUNC0(fd);
	}
	else
	{
		FUNC3("can't open [%s]\n", FUNC5(errno));
	}
}