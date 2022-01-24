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
struct firmware {int /*<<< orphan*/  priv; } ;
struct device {int dummy; } ;
typedef  enum fw_opt { ____Placeholder_fw_opt } fw_opt ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int FW_OPT_NO_WARN ; 
 int FUNC0 (struct firmware**,char const*,struct device*,void*,size_t,int) ; 
 int FUNC1 (struct firmware*,struct device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char const*,int) ; 
 int FUNC3 (struct firmware*,char const*,struct device*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware*) ; 
 int /*<<< orphan*/ * fw_decompress_xz ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct firmware*) ; 

__attribute__((used)) static int
FUNC7(const struct firmware **firmware_p, const char *name,
		  struct device *device, void *buf, size_t size,
		  enum fw_opt opt_flags)
{
	struct firmware *fw = NULL;
	int ret;

	if (!firmware_p)
		return -EINVAL;

	if (!name || name[0] == '\0') {
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC0(&fw, name, device, buf, size,
					opt_flags);
	if (ret <= 0) /* error or already assigned */
		goto out;

	ret = FUNC5(device, fw->priv, "", NULL);
#ifdef CONFIG_FW_LOADER_COMPRESS
	if (ret == -ENOENT)
		ret = fw_get_filesystem_firmware(device, fw->priv, ".xz",
						 fw_decompress_xz);
#endif

	if (ret) {
		if (!(opt_flags & FW_OPT_NO_WARN))
			FUNC2(device,
				 "Direct firmware load for %s failed with error %d\n",
				 name, ret);
		ret = FUNC3(fw, name, device, opt_flags, ret);
	} else
		ret = FUNC1(fw, device, opt_flags);

 out:
	if (ret < 0) {
		FUNC4(fw);
		FUNC6(fw);
		fw = NULL;
	}

	*firmware_p = fw;
	return ret;
}