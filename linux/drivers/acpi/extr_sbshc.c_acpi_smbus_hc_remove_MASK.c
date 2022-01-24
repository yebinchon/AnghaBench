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
struct acpi_smb_hc {int /*<<< orphan*/  query_bit; int /*<<< orphan*/  ec; } ;
struct acpi_device {int /*<<< orphan*/ * driver_data; } ;

/* Variables and functions */
 int EINVAL ; 
 struct acpi_smb_hc* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_smb_hc*) ; 

__attribute__((used)) static int FUNC4(struct acpi_device *device)
{
	struct acpi_smb_hc *hc;

	if (!device)
		return -EINVAL;

	hc = FUNC0(device);
	FUNC1(hc->ec, hc->query_bit);
	FUNC2();
	FUNC3(hc);
	device->driver_data = NULL;
	return 0;
}