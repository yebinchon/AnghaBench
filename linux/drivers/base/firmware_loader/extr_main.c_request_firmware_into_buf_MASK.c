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
struct firmware {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FW_OPT_NOCACHE ; 
 int FW_OPT_UEVENT ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct firmware const**,char const*,struct device*,void*,size_t,int) ; 
 scalar_t__ FUNC2 (struct device*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(const struct firmware **firmware_p, const char *name,
			  struct device *device, void *buf, size_t size)
{
	int ret;

	if (FUNC2(device, name))
		return -EOPNOTSUPP;

	FUNC0(THIS_MODULE);
	ret = FUNC1(firmware_p, name, device, buf, size,
				FW_OPT_UEVENT | FW_OPT_NOCACHE);
	FUNC3(THIS_MODULE);
	return ret;
}