#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_4__ {scalar_t__ data; scalar_t__ status; scalar_t__ size; } ;
struct TYPE_3__ {scalar_t__ status; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FLASH_IMG_READY ; 
 int /*<<< orphan*/  FLASH_UPDATE_CANCEL ; 
 scalar_t__ IMAGE_LOADING ; 
 scalar_t__ IMAGE_READY ; 
 int FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__ image_data ; 
 int /*<<< orphan*/  image_data_mutex ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_1__ update_flash_data ; 

__attribute__((used)) static ssize_t FUNC7(struct file *filp, struct kobject *kobj,
				struct bin_attribute *bin_attr,
				char *buffer, loff_t pos, size_t count)
{
	int rc;

	FUNC3(&image_data_mutex);

	/* New image ? */
	if (pos == 0) {
		/* Free memory, if already allocated */
		if (image_data.data)
			FUNC1();

		/* Cancel outstanding image update request */
		if (update_flash_data.status == FLASH_IMG_READY)
			FUNC5(FLASH_UPDATE_CANCEL);

		/* Allocate memory */
		rc = FUNC0(buffer, count);
		if (rc)
			goto out;
	}

	if (image_data.status != IMAGE_LOADING) {
		rc = -ENOMEM;
		goto out;
	}

	if ((pos + count) > image_data.size) {
		rc = -EINVAL;
		goto out;
	}

	FUNC2(image_data.data + pos, (void *)buffer, count);
	rc = count;

	/* Set image status */
	if ((pos + count) == image_data.size) {
		FUNC6("FLASH: Candidate image loaded....\n");
		image_data.status = IMAGE_READY;
	}

out:
	FUNC4(&image_data_mutex);
	return rc;
}