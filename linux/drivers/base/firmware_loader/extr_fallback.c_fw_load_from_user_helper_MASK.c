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
struct fw_sysfs {int /*<<< orphan*/  fw_priv; } ;
struct firmware {int /*<<< orphan*/  priv; } ;
struct device {int dummy; } ;
typedef  enum fw_opt { ____Placeholder_fw_opt } fw_opt ;

/* Variables and functions */
 int EBUSY ; 
 int FW_OPT_NOWAIT ; 
 scalar_t__ FUNC0 (struct fw_sysfs*) ; 
 int FUNC1 (struct fw_sysfs*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct firmware*,struct device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,char const*) ; 
 long FUNC6 () ; 
 struct fw_sysfs* FUNC7 (struct firmware*,char const*,struct device*,int) ; 
 int FUNC8 (struct fw_sysfs*,int,long) ; 
 long FUNC9 (long) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int FUNC12(struct firmware *firmware,
				    const char *name, struct device *device,
				    enum fw_opt opt_flags)
{
	struct fw_sysfs *fw_sysfs;
	long timeout;
	int ret;

	timeout = FUNC6();
	if (opt_flags & FW_OPT_NOWAIT) {
		timeout = FUNC9(timeout);
		if (!timeout) {
			FUNC4(device, "firmware: %s loading timed out\n",
				name);
			return -EBUSY;
		}
	} else {
		ret = FUNC10();
		if (FUNC2(ret)) {
			FUNC5(device, "firmware: %s will not be loaded\n",
				name);
			return ret;
		}
	}

	fw_sysfs = FUNC7(firmware, name, device, opt_flags);
	if (FUNC0(fw_sysfs)) {
		ret = FUNC1(fw_sysfs);
		goto out_unlock;
	}

	fw_sysfs->fw_priv = firmware->priv;
	ret = FUNC8(fw_sysfs, opt_flags, timeout);

	if (!ret)
		ret = FUNC3(firmware, device, opt_flags);

out_unlock:
	FUNC11();

	return ret;
}