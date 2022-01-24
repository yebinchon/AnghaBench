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
struct acpi_device {int /*<<< orphan*/  handle; } ;
struct acpi_button {int last_state; int /*<<< orphan*/  last_time; int /*<<< orphan*/  input; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 scalar_t__ ACPI_BUTTON_LID_INIT_IGNORE ; 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  SW_LID ; 
 struct acpi_button* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  acpi_lid_notifier ; 
 int FUNC2 (int /*<<< orphan*/ *,int,struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ lid_init_state ; 
 int /*<<< orphan*/  lid_report_interval ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(struct acpi_device *device, int state)
{
	struct acpi_button *button = FUNC0(device);
	int ret;
	ktime_t next_report;
	bool do_update;

	/*
	 * In lid_init_state=ignore mode, if user opens/closes lid
	 * frequently with "open" missing, and "last_time" is also updated
	 * frequently, "close" cannot be delivered to the userspace.
	 * So "last_time" is only updated after a timeout or an actual
	 * switch.
	 */
	if (lid_init_state != ACPI_BUTTON_LID_INIT_IGNORE ||
	    button->last_state != !!state)
		do_update = true;
	else
		do_update = false;

	next_report = FUNC5(button->last_time,
				FUNC8(lid_report_interval));
	if (button->last_state == !!state &&
	    FUNC6(FUNC7(), next_report)) {
		/* Complain the buggy firmware */
		FUNC9("The lid device is not compliant to SW_LID.\n");

		/*
		 * Send the unreliable complement switch event:
		 *
		 * On most platforms, the lid device is reliable. However
		 * there are exceptions:
		 * 1. Platforms returning initial lid state as "close" by
		 *    default after booting/resuming:
		 *     https://bugzilla.kernel.org/show_bug.cgi?id=89211
		 *     https://bugzilla.kernel.org/show_bug.cgi?id=106151
		 * 2. Platforms never reporting "open" events:
		 *     https://bugzilla.kernel.org/show_bug.cgi?id=106941
		 * On these buggy platforms, the usage model of the ACPI
		 * lid device actually is:
		 * 1. The initial returning value of _LID may not be
		 *    reliable.
		 * 2. The open event may not be reliable.
		 * 3. The close event is reliable.
		 *
		 * But SW_LID is typed as input switch event, the input
		 * layer checks if the event is redundant. Hence if the
		 * state is not switched, the userspace cannot see this
		 * platform triggered reliable event. By inserting a
		 * complement switch event, it then is guaranteed that the
		 * platform triggered reliable one can always be seen by
		 * the userspace.
		 */
		if (lid_init_state == ACPI_BUTTON_LID_INIT_IGNORE) {
			do_update = true;
			/*
			 * Do generate complement switch event for "close"
			 * as "close" is reliable and wrong "open" won't
			 * trigger unexpected behaviors.
			 * Do not generate complement switch event for
			 * "open" as "open" is not reliable and wrong
			 * "close" will trigger unexpected behaviors.
			 */
			if (!state) {
				FUNC3(button->input,
						    SW_LID, state);
				FUNC4(button->input);
			}
		}
	}
	/* Send the platform triggered reliable event */
	if (do_update) {
		FUNC1(device->handle, "ACPI LID %s\n",
				  state ? "open" : "closed");
		FUNC3(button->input, SW_LID, !state);
		FUNC4(button->input);
		button->last_state = !!state;
		button->last_time = FUNC7();
	}

	ret = FUNC2(&acpi_lid_notifier, state, device);
	if (ret == NOTIFY_DONE)
		ret = FUNC2(&acpi_lid_notifier, state,
						   device);
	if (ret == NOTIFY_DONE || ret == NOTIFY_OK) {
		/*
		 * It is also regarded as success if the notifier_chain
		 * returns NOTIFY_OK or NOTIFY_DONE.
		 */
		ret = 0;
	}
	return ret;
}