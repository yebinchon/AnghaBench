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
struct acpi_video_device_attrib {int display_type; scalar_t__ bios_can_detect; scalar_t__ device_id_scheme; } ;
struct TYPE_2__ {int crt; int tvout; int dvi; int lcd; int unknown; int bios; } ;
struct acpi_video_device {unsigned long long device_id; int /*<<< orphan*/  entry; TYPE_1__ flags; int /*<<< orphan*/  switch_brightness_work; struct acpi_device* dev; struct acpi_video_bus* video; } ;
struct acpi_video_bus {int /*<<< orphan*/  device_list_lock; int /*<<< orphan*/  video_device_list; } ;
struct acpi_device {struct acpi_video_device* driver_data; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  ACPI_VIDEO_CLASS ; 
 int /*<<< orphan*/  ACPI_VIDEO_DEVICE_NAME ; 
#define  ACPI_VIDEO_DISPLAY_CRT 134 
#define  ACPI_VIDEO_DISPLAY_DVI 133 
#define  ACPI_VIDEO_DISPLAY_LCD 132 
#define  ACPI_VIDEO_DISPLAY_LEGACY_MONITOR 131 
#define  ACPI_VIDEO_DISPLAY_LEGACY_PANEL 130 
#define  ACPI_VIDEO_DISPLAY_LEGACY_TV 129 
#define  ACPI_VIDEO_DISPLAY_TV 128 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_video_bus*,struct acpi_video_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_video_device*) ; 
 struct acpi_video_device_attrib* FUNC7 (struct acpi_video_bus*,unsigned long long) ; 
 int FUNC8 (struct acpi_video_bus*,unsigned long long) ; 
 int /*<<< orphan*/  acpi_video_switch_brightness ; 
 scalar_t__ device_id_scheme ; 
 struct acpi_video_device* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(struct acpi_device *device,
			      struct acpi_video_bus *video)
{
	unsigned long long device_id;
	int status, device_type;
	struct acpi_video_device *data;
	struct acpi_video_device_attrib *attribute;

	status =
	    FUNC4(device->handle, "_ADR", NULL, &device_id);
	/* Some device omits _ADR, we skip them instead of fail */
	if (FUNC0(status))
		return 0;

	data = FUNC9(sizeof(struct acpi_video_device), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC13(FUNC3(device), ACPI_VIDEO_DEVICE_NAME);
	FUNC13(FUNC2(device), ACPI_VIDEO_CLASS);
	device->driver_data = data;

	data->device_id = device_id;
	data->video = video;
	data->dev = device;
	FUNC1(&data->switch_brightness_work,
			  acpi_video_switch_brightness);

	attribute = FUNC7(video, device_id);

	if (attribute && (attribute->device_id_scheme || device_id_scheme)) {
		switch (attribute->display_type) {
		case ACPI_VIDEO_DISPLAY_CRT:
			data->flags.crt = 1;
			break;
		case ACPI_VIDEO_DISPLAY_TV:
			data->flags.tvout = 1;
			break;
		case ACPI_VIDEO_DISPLAY_DVI:
			data->flags.dvi = 1;
			break;
		case ACPI_VIDEO_DISPLAY_LCD:
			data->flags.lcd = 1;
			break;
		default:
			data->flags.unknown = 1;
			break;
		}
		if (attribute->bios_can_detect)
			data->flags.bios = 1;
	} else {
		/* Check for legacy IDs */
		device_type = FUNC8(video, device_id);
		/* Ignore bits 16 and 18-20 */
		switch (device_type & 0xffe2ffff) {
		case ACPI_VIDEO_DISPLAY_LEGACY_MONITOR:
			data->flags.crt = 1;
			break;
		case ACPI_VIDEO_DISPLAY_LEGACY_PANEL:
			data->flags.lcd = 1;
			break;
		case ACPI_VIDEO_DISPLAY_LEGACY_TV:
			data->flags.tvout = 1;
			break;
		default:
			data->flags.unknown = 1;
		}
	}

	FUNC5(video, data);
	FUNC6(data);

	FUNC11(&video->device_list_lock);
	FUNC10(&data->entry, &video->video_device_list);
	FUNC12(&video->device_list_lock);

	return status;
}