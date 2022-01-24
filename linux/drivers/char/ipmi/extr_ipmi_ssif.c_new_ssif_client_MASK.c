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
struct TYPE_2__ {int addr; struct ssif_addr_info* platform_data; int /*<<< orphan*/  type; } ;
struct ssif_addr_info {int debug; int slave_addr; int addr_src; int /*<<< orphan*/  link; struct device* dev; TYPE_1__ binfo; int /*<<< orphan*/  adapter_name; } ;
struct device {int dummy; } ;
typedef  enum ipmi_addr_src { ____Placeholder_ipmi_addr_src } ipmi_addr_src ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_NAME ; 
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct ssif_addr_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct ssif_addr_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ initialized ; 
 int /*<<< orphan*/  FUNC2 (struct ssif_addr_info*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 struct ssif_addr_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ssif_adapter_handler ; 
 scalar_t__ FUNC8 (int,char*,int) ; 
 int /*<<< orphan*/  ssif_infos ; 
 int /*<<< orphan*/  ssif_infos_mutex ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(int addr, char *adapter_name,
			   int debug, int slave_addr,
			   enum ipmi_addr_src addr_src,
			   struct device *dev)
{
	struct ssif_addr_info *addr_info;
	int rv = 0;

	FUNC6(&ssif_infos_mutex);
	if (FUNC8(addr, adapter_name, false)) {
		rv = -EEXIST;
		goto out_unlock;
	}

	addr_info = FUNC4(sizeof(*addr_info), GFP_KERNEL);
	if (!addr_info) {
		rv = -ENOMEM;
		goto out_unlock;
	}

	if (adapter_name) {
		addr_info->adapter_name = FUNC3(adapter_name, GFP_KERNEL);
		if (!addr_info->adapter_name) {
			FUNC2(addr_info);
			rv = -ENOMEM;
			goto out_unlock;
		}
	}

	FUNC9(addr_info->binfo.type, DEVICE_NAME,
		sizeof(addr_info->binfo.type));
	addr_info->binfo.addr = addr;
	addr_info->binfo.platform_data = addr_info;
	addr_info->debug = debug;
	addr_info->slave_addr = slave_addr;
	addr_info->addr_src = addr_src;
	addr_info->dev = dev;

	if (dev)
		FUNC0(dev, addr_info);

	FUNC5(&addr_info->link, &ssif_infos);

	if (initialized)
		FUNC1(addr_info, ssif_adapter_handler);
	/* Otherwise address list will get it */

out_unlock:
	FUNC7(&ssif_infos_mutex);
	return rv;
}