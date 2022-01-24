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
typedef  enum fw_opt { ____Placeholder_fw_opt } fw_opt ;

/* Variables and functions */
 int FW_OPT_NO_WARN ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char const*) ; 
 int FUNC2 (struct firmware*,char const*,struct device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(struct firmware *fw, const char *name,
			    struct device *device,
			    enum fw_opt opt_flags,
			    int ret)
{
	if (!FUNC3(opt_flags))
		return ret;

	if (!(opt_flags & FW_OPT_NO_WARN))
		FUNC1(device, "Falling back to sysfs fallback for: %s\n",
				 name);
	else
		FUNC0(device, "Falling back to sysfs fallback for: %s\n",
				name);
	return FUNC2(fw, name, device, opt_flags);
}