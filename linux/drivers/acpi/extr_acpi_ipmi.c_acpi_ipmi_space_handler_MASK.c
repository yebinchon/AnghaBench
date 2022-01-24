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
typedef  int u32 ;
struct acpi_ipmi_msg {int /*<<< orphan*/  tx_complete; int /*<<< orphan*/  tx_message; int /*<<< orphan*/  tx_msgid; int /*<<< orphan*/  addr; int /*<<< orphan*/  head; struct acpi_ipmi_device* device; } ;
struct acpi_ipmi_device {int /*<<< orphan*/  user_interface; int /*<<< orphan*/  tx_msg_lock; int /*<<< orphan*/  tx_msg_list; scalar_t__ dead; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_physical_address ;
typedef  int /*<<< orphan*/  acpi_integer ;
struct TYPE_2__ {int /*<<< orphan*/  ipmi_lock; } ;

/* Variables and functions */
 int ACPI_IO_MASK ; 
 int ACPI_READ ; 
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_TYPE ; 
 int /*<<< orphan*/  IPMI_TIMEOUT ; 
 scalar_t__ FUNC0 (struct acpi_ipmi_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_ipmi_msg*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_ipmi_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_ipmi_msg*) ; 
 TYPE_1__ driver_data ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_ipmi_device*,struct acpi_ipmi_msg*) ; 
 struct acpi_ipmi_msg* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_ipmi_msg*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static acpi_status
FUNC14(u32 function, acpi_physical_address address,
			u32 bits, acpi_integer *value,
			void *handler_context, void *region_context)
{
	struct acpi_ipmi_msg *tx_msg;
	struct acpi_ipmi_device *ipmi_device;
	int err;
	acpi_status status;
	unsigned long flags;

	/*
	 * IPMI opregion message.
	 * IPMI message is firstly written to the BMC and system software
	 * can get the respsonse. So it is unmeaningful for the read access
	 * of IPMI opregion.
	 */
	if ((function & ACPI_IO_MASK) == ACPI_READ)
		return AE_TYPE;

	tx_msg = FUNC5();
	if (!tx_msg)
		return AE_NOT_EXIST;
	ipmi_device = tx_msg->device;

	if (FUNC0(tx_msg, address, value) != 0) {
		FUNC6(tx_msg);
		return AE_TYPE;
	}

	FUNC2(tx_msg);
	FUNC9(&driver_data.ipmi_lock);
	/* Do not add a tx_msg that can not be flushed. */
	if (ipmi_device->dead) {
		FUNC10(&driver_data.ipmi_lock);
		FUNC6(tx_msg);
		return AE_NOT_EXIST;
	}
	FUNC11(&ipmi_device->tx_msg_lock, flags);
	FUNC8(&tx_msg->head, &ipmi_device->tx_msg_list);
	FUNC12(&ipmi_device->tx_msg_lock, flags);
	FUNC10(&driver_data.ipmi_lock);

	err = FUNC7(ipmi_device->user_interface,
				   &tx_msg->addr,
				   tx_msg->tx_msgid,
				   &tx_msg->tx_message,
				   NULL, 0, 0, IPMI_TIMEOUT);
	if (err) {
		status = AE_ERROR;
		goto out_msg;
	}
	FUNC13(&tx_msg->tx_complete);

	FUNC1(tx_msg, value);
	status = AE_OK;

out_msg:
	FUNC4(ipmi_device, tx_msg);
	FUNC3(tx_msg);
	return status;
}