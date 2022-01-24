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
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 

__attribute__((used)) static bool FUNC2(acpi_handle handle)
{
	acpi_handle tmp;

	if (FUNC0(FUNC1(NULL, "\\_SB", &tmp)) &&
	    tmp == handle)
		return true;
	if (FUNC0(FUNC1(NULL, "\\_TZ", &tmp)) &&
	    tmp == handle)
		return true;

	return false;
}