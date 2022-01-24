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
struct ipmi_user {int dummy; } ;
struct device {int dummy; } ;
struct acpi_ipmi_device {int ipmi_ifnum; struct ipmi_user* user_interface; int /*<<< orphan*/  dev; int /*<<< orphan*/  handle; int /*<<< orphan*/  tx_msg_lock; int /*<<< orphan*/  tx_msg_list; int /*<<< orphan*/  head; int /*<<< orphan*/  kref; } ;
typedef  int /*<<< orphan*/  acpi_handle ;
struct TYPE_2__ {int /*<<< orphan*/  ipmi_hndlrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ driver_data ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int FUNC2 (int,int /*<<< orphan*/ *,struct acpi_ipmi_device*,struct ipmi_user**) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_ipmi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct acpi_ipmi_device* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct acpi_ipmi_device *
FUNC8(int iface, struct device *dev, acpi_handle handle)
{
	struct acpi_ipmi_device *ipmi_device;
	int err;
	struct ipmi_user *user;

	ipmi_device = FUNC5(sizeof(*ipmi_device), GFP_KERNEL);
	if (!ipmi_device)
		return NULL;

	FUNC4(&ipmi_device->kref);
	FUNC0(&ipmi_device->head);
	FUNC0(&ipmi_device->tx_msg_list);
	FUNC7(&ipmi_device->tx_msg_lock);
	ipmi_device->handle = handle;
	ipmi_device->dev = FUNC1(dev);
	ipmi_device->ipmi_ifnum = iface;

	err = FUNC2(iface, &driver_data.ipmi_hndlrs,
			       ipmi_device, &user);
	if (err) {
		FUNC6(dev);
		FUNC3(ipmi_device);
		return NULL;
	}
	ipmi_device->user_interface = user;

	return ipmi_device;
}