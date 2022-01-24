#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xenbus_device {int /*<<< orphan*/  nodename; } ;
struct xen_blkif {int domid; TYPE_1__* be; } ;
struct TYPE_2__ {struct xenbus_device* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  TASK_COMM_LEN ; 
 int /*<<< orphan*/  XBT_NIL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct xen_blkif *blkif, char *buf)
{
	char *devpath, *devname;
	struct xenbus_device *dev = blkif->be->dev;

	devpath = FUNC6(XBT_NIL, dev->nodename, "dev", NULL);
	if (FUNC0(devpath))
		return FUNC1(devpath);

	devname = FUNC5(devpath, "/dev/");
	if (devname != NULL)
		devname += FUNC4("/dev/");
	else
		devname  = devpath;

	FUNC3(buf, TASK_COMM_LEN, "%d.%s", blkif->domid, devname);
	FUNC2(devpath);

	return 0;
}