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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static acpi_status
FUNC4(u64 *accumulated_value, u32 base, int ascii_digit)
{
	acpi_status status;
	u64 product;

	/* Make room in the accumulated value for the incoming digit */

	status = FUNC3(*accumulated_value, base, &product);
	if (FUNC0(status)) {
		return (status);
	}

	/* Add in the new digit, and store the sum to the accumulated value */

	status =
	    FUNC2(product,
				  FUNC1(ascii_digit),
				  accumulated_value);

	return (status);
}