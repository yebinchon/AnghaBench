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
struct usbentry {int bus_num; int dev_num; int vendor_id; int product_id; char* product_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 struct usbentry* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,int,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
	DIR *devs = FUNC1("/sys/bus/usb/devices");
	struct usbentry *dev;

	if (!devs)
		return;

	while ((dev = FUNC2(devs)) != NULL)
	{
		FUNC3("  Number %03d/%03d  ID %04x:%04x  %s\n",
			   dev->bus_num, dev->dev_num,
			   dev->vendor_id, dev->product_id,
			   dev->product_name);
	}

	FUNC0(devs);
}