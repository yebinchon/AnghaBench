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
 int FW_OPT_NO_WARN ; 
 int FW_OPT_UEVENT ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct firmware const**,char const*,struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(const struct firmware **firmware, const char *name,
			    struct device *device)
{
	int ret;

	/* Need to pin this module until return */
	FUNC0(THIS_MODULE);
	ret = FUNC1(firmware, name, device, NULL, 0,
				FW_OPT_UEVENT | FW_OPT_NO_WARN);
	FUNC2(THIS_MODULE);
	return ret;
}