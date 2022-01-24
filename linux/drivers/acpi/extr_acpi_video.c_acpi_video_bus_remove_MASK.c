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
struct acpi_video_bus {struct acpi_video_bus* attached_array; int /*<<< orphan*/  entry; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct acpi_video_bus* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_video_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_video_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_video_bus*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_video_bus*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  video_list_lock ; 

__attribute__((used)) static int FUNC8(struct acpi_device *device)
{
	struct acpi_video_bus *video = NULL;


	if (!device || !FUNC0(device))
		return -EINVAL;

	video = FUNC0(device);

	FUNC2(video);
	FUNC3(video);
	FUNC1(video);

	FUNC6(&video_list_lock);
	FUNC5(&video->entry);
	FUNC7(&video_list_lock);

	FUNC4(video->attached_array);
	FUNC4(video);

	return 0;
}