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
struct acpi_ipmi_msg {int /*<<< orphan*/  msg_done; struct acpi_ipmi_device* device; int /*<<< orphan*/  head; int /*<<< orphan*/  tx_complete; int /*<<< orphan*/  kref; } ;
struct acpi_ipmi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_IPMI_UNKNOWN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct acpi_ipmi_device* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_ipmi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct acpi_ipmi_msg* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct acpi_ipmi_msg *FUNC6(void)
{
	struct acpi_ipmi_device *ipmi;
	struct acpi_ipmi_msg *ipmi_msg;

	ipmi = FUNC1();
	if (!ipmi)
		return NULL;

	ipmi_msg = FUNC5(sizeof(struct acpi_ipmi_msg), GFP_KERNEL);
	if (!ipmi_msg) {
		FUNC2(ipmi);
		return NULL;
	}

	FUNC4(&ipmi_msg->kref);
	FUNC3(&ipmi_msg->tx_complete);
	FUNC0(&ipmi_msg->head);
	ipmi_msg->device = ipmi;
	ipmi_msg->msg_done = ACPI_IPMI_UNKNOWN;

	return ipmi_msg;
}