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
struct kernel_param {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BUTTON_LID_INIT_IGNORE ; 
 int /*<<< orphan*/  ACPI_BUTTON_LID_INIT_METHOD ; 
 int /*<<< orphan*/  ACPI_BUTTON_LID_INIT_OPEN ; 
 int EINVAL ; 
 int /*<<< orphan*/  lid_init_state ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC2(const char *val,
				    const struct kernel_param *kp)
{
	int result = 0;

	if (!FUNC1(val, "open", sizeof("open") - 1)) {
		lid_init_state = ACPI_BUTTON_LID_INIT_OPEN;
		FUNC0("Notify initial lid state as open\n");
	} else if (!FUNC1(val, "method", sizeof("method") - 1)) {
		lid_init_state = ACPI_BUTTON_LID_INIT_METHOD;
		FUNC0("Notify initial lid state with _LID return value\n");
	} else if (!FUNC1(val, "ignore", sizeof("ignore") - 1)) {
		lid_init_state = ACPI_BUTTON_LID_INIT_IGNORE;
		FUNC0("Do not notify initial lid state\n");
	} else
		result = -EINVAL;
	return result;
}