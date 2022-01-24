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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;
typedef  int /*<<< orphan*/  acpi_event_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_NUM_FIXED_EVENTS ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NOT_FOUND ; 
 int EINVAL ; 
 int EIO ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ num_gpes ; 

__attribute__((used)) static int FUNC5(u32 index, acpi_event_status *ret,
		      acpi_handle *handle)
{
	acpi_status status;

	if (index >= num_gpes + ACPI_NUM_FIXED_EVENTS)
		return -EINVAL;

	if (index < num_gpes) {
		status = FUNC3(index, handle);
		if (FUNC1(status)) {
			FUNC0((AE_INFO, AE_NOT_FOUND,
					"Invalid GPE 0x%x", index));
			return -ENXIO;
		}
		status = FUNC4(*handle, index, ret);
	} else {
		status = FUNC2(index - num_gpes, ret);
	}
	if (FUNC1(status))
		return -EIO;

	return 0;
}