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
struct input_dev {int users; int /*<<< orphan*/  keybit; int /*<<< orphan*/  mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  device_class; } ;
struct acpi_device {int /*<<< orphan*/  dev; TYPE_1__ pnp; } ;
struct acpi_button {int /*<<< orphan*/  pushed; int /*<<< orphan*/  suspended; struct input_dev* input; int /*<<< orphan*/  type; } ;

/* Variables and functions */
#define  ACPI_BUTTON_NOTIFY_STATUS 129 
 int /*<<< orphan*/  ACPI_BUTTON_TYPE_LID ; 
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  ACPI_FIXED_HARDWARE_EVENT 128 
 int KEY_POWER ; 
 int KEY_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct acpi_button* FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct acpi_device *device, u32 event)
{
	struct acpi_button *button = FUNC2(device);
	struct input_dev *input;
	int users;

	switch (event) {
	case ACPI_FIXED_HARDWARE_EVENT:
		event = ACPI_BUTTON_NOTIFY_STATUS;
		/* fall through */
	case ACPI_BUTTON_NOTIFY_STATUS:
		input = button->input;
		if (button->type == ACPI_BUTTON_TYPE_LID) {
			FUNC8(&button->input->mutex);
			users = button->input->users;
			FUNC9(&button->input->mutex);
			if (users)
				FUNC3(device, true);
		} else {
			int keycode;

			FUNC4(&device->dev);
			if (button->suspended)
				break;

			keycode = FUNC10(KEY_SLEEP, input->keybit) ?
						KEY_SLEEP : KEY_POWER;
			FUNC6(input, keycode, 1);
			FUNC7(input);
			FUNC6(input, keycode, 0);
			FUNC7(input);

			FUNC1(
					device->pnp.device_class,
					FUNC5(&device->dev),
					event, ++button->pushed);
		}
		break;
	default:
		FUNC0((ACPI_DB_INFO,
				  "Unsupported event [0x%x]\n", event));
		break;
	}
}