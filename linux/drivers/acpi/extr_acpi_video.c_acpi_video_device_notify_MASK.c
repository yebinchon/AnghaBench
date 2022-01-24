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
typedef  int /*<<< orphan*/  u32 ;
struct input_dev {int dummy; } ;
struct acpi_video_device {scalar_t__ backlight; struct acpi_video_bus* video; struct acpi_device* dev; } ;
struct acpi_video_bus {struct input_dev* input; } ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  ACPI_VIDEO_NOTIFY_CYCLE_BRIGHTNESS 132 
#define  ACPI_VIDEO_NOTIFY_DEC_BRIGHTNESS 131 
#define  ACPI_VIDEO_NOTIFY_DISPLAY_OFF 130 
#define  ACPI_VIDEO_NOTIFY_INC_BRIGHTNESS 129 
#define  ACPI_VIDEO_NOTIFY_ZERO_BRIGHTNESS 128 
 int /*<<< orphan*/  BACKLIGHT_UPDATE_HOTKEY ; 
 int KEY_BRIGHTNESSDOWN ; 
 int KEY_BRIGHTNESSUP ; 
 int KEY_BRIGHTNESS_CYCLE ; 
 int KEY_BRIGHTNESS_ZERO ; 
 int KEY_DISPLAY_OFF ; 
 int REPORT_BRIGHTNESS_KEY_EVENTS ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_video_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ hw_changes_brightness ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 
 int report_key_events ; 

__attribute__((used)) static void FUNC6(acpi_handle handle, u32 event, void *data)
{
	struct acpi_video_device *video_device = data;
	struct acpi_device *device = NULL;
	struct acpi_video_bus *bus;
	struct input_dev *input;
	int keycode = 0;

	if (!video_device)
		return;

	device = video_device->dev;
	bus = video_device->video;
	input = bus->input;

	if (hw_changes_brightness > 0) {
		if (video_device->backlight)
			FUNC2(video_device->backlight,
					       BACKLIGHT_UPDATE_HOTKEY);
		FUNC1(device, event, 0);
		return;
	}

	switch (event) {
	case ACPI_VIDEO_NOTIFY_CYCLE_BRIGHTNESS:	/* Cycle brightness */
		FUNC3(video_device, event);
		keycode = KEY_BRIGHTNESS_CYCLE;
		break;
	case ACPI_VIDEO_NOTIFY_INC_BRIGHTNESS:	/* Increase brightness */
		FUNC3(video_device, event);
		keycode = KEY_BRIGHTNESSUP;
		break;
	case ACPI_VIDEO_NOTIFY_DEC_BRIGHTNESS:	/* Decrease brightness */
		FUNC3(video_device, event);
		keycode = KEY_BRIGHTNESSDOWN;
		break;
	case ACPI_VIDEO_NOTIFY_ZERO_BRIGHTNESS:	/* zero brightness */
		FUNC3(video_device, event);
		keycode = KEY_BRIGHTNESS_ZERO;
		break;
	case ACPI_VIDEO_NOTIFY_DISPLAY_OFF:	/* display device off */
		FUNC3(video_device, event);
		keycode = KEY_DISPLAY_OFF;
		break;
	default:
		FUNC0((ACPI_DB_INFO,
				  "Unsupported event [0x%x]\n", event));
		break;
	}

	FUNC1(device, event, 0);

	if (keycode && (report_key_events & REPORT_BRIGHTNESS_KEY_EVENTS)) {
		FUNC4(input, keycode, 1);
		FUNC5(input);
		FUNC4(input, keycode, 0);
		FUNC5(input);
	}

	return;
}