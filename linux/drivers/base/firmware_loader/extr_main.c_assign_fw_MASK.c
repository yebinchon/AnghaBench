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
struct fw_priv {int /*<<< orphan*/  ref; int /*<<< orphan*/  fw_name; TYPE_1__* fwc; int /*<<< orphan*/  size; } ;
struct firmware {struct fw_priv* priv; } ;
struct device {int dummy; } ;
typedef  enum fw_opt { ____Placeholder_fw_opt } fw_opt ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FW_LOADER_START_CACHE ; 
 int FW_OPT_NOCACHE ; 
 int FW_OPT_UEVENT ; 
 int FUNC0 (struct device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fw_lock ; 
 int /*<<< orphan*/  FUNC2 (struct fw_priv*,struct firmware*) ; 
 scalar_t__ FUNC3 (struct fw_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct firmware *fw, struct device *device,
	      enum fw_opt opt_flags)
{
	struct fw_priv *fw_priv = fw->priv;
	int ret;

	FUNC5(&fw_lock);
	if (!fw_priv->size || FUNC3(fw_priv)) {
		FUNC6(&fw_lock);
		return -ENOENT;
	}

	/*
	 * add firmware name into devres list so that we can auto cache
	 * and uncache firmware for device.
	 *
	 * device may has been deleted already, but the problem
	 * should be fixed in devres or driver core.
	 */
	/* don't cache firmware handled without uevent */
	if (device && (opt_flags & FW_OPT_UEVENT) &&
	    !(opt_flags & FW_OPT_NOCACHE)) {
		ret = FUNC0(device, fw_priv->fw_name);
		if (ret) {
			FUNC6(&fw_lock);
			return ret;
		}
	}

	/*
	 * After caching firmware image is started, let it piggyback
	 * on request firmware.
	 */
	if (!(opt_flags & FW_OPT_NOCACHE) &&
	    fw_priv->fwc->state == FW_LOADER_START_CACHE) {
		if (FUNC1(fw_priv->fw_name))
			FUNC4(&fw_priv->ref);
	}

	/* pass the pages buffer to driver at the last minute */
	FUNC2(fw_priv, fw);
	FUNC6(&fw_lock);
	return 0;
}