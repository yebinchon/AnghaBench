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
struct usbentry {void* product_id; void* vendor_id; void* dev_num; void* bus_num; int /*<<< orphan*/  product_name; int /*<<< orphan*/  vendor_name; } ;
struct dirent {int /*<<< orphan*/ * d_name; } ;
typedef  int /*<<< orphan*/  dev ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usbentry*,int /*<<< orphan*/ ,int) ; 
 struct dirent* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC5 (char*,int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static struct usbentry * FUNC7(DIR *d)
{
	char *attr;
	struct dirent *e;
	static struct usbentry dev;

	do {
		e = FUNC2(d);

		if (!e)
			return NULL;
	}
	while(!FUNC0(e->d_name[0]) || FUNC3(e->d_name, ':'));

	FUNC1(&dev, 0, sizeof(dev));

	if ((attr = FUNC6(e->d_name, "busnum")) != NULL)
		dev.bus_num = FUNC5(attr, NULL, 10);

	if ((attr = FUNC6(e->d_name, "devnum")) != NULL)
		dev.dev_num = FUNC5(attr, NULL, 10);

	if ((attr = FUNC6(e->d_name, "idVendor")) != NULL)
		dev.vendor_id = FUNC5(attr, NULL, 16);

	if ((attr = FUNC6(e->d_name, "idProduct")) != NULL)
		dev.product_id = FUNC5(attr, NULL, 16);

	if ((attr = FUNC6(e->d_name, "manufacturer")) != NULL)
		FUNC4(dev.vendor_name, attr);

	if ((attr = FUNC6(e->d_name, "product")) != NULL)
		FUNC4(dev.product_name, attr);

	if (dev.bus_num && dev.dev_num && dev.vendor_id && dev.product_id)
		return &dev;

	return NULL;
}