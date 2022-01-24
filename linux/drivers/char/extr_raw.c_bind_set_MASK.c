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
typedef  scalar_t__ u64 ;
struct raw_device_data {int /*<<< orphan*/ * binding; scalar_t__ inuse; } ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 scalar_t__ RAW_MAJOR ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int max_raw_minors ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  raw_class ; 
 struct raw_device_data* raw_devices ; 
 int /*<<< orphan*/  raw_mutex ; 

__attribute__((used)) static int FUNC12(int number, u64 major, u64 minor)
{
	dev_t dev = FUNC2(major, minor);
	struct raw_device_data *rawdev;
	int err = 0;

	if (number <= 0 || number >= max_raw_minors)
		return -EINVAL;

	if (FUNC0(dev) != major || FUNC1(dev) != minor)
		return -EINVAL;

	rawdev = &raw_devices[number];

	/*
	 * This is like making block devices, so demand the
	 * same capability
	 */
	if (!FUNC6(CAP_SYS_ADMIN))
		return -EPERM;

	/*
	 * For now, we don't need to check that the underlying
	 * block device is present or not: we can do that when
	 * the raw device is opened.  Just check that the
	 * major/minor numbers make sense.
	 */

	if (FUNC0(dev) == 0 && dev != 0)
		return -EINVAL;

	FUNC10(&raw_mutex);
	if (rawdev->inuse) {
		FUNC11(&raw_mutex);
		return -EBUSY;
	}
	if (rawdev->binding) {
		FUNC5(rawdev->binding);
		FUNC9(THIS_MODULE);
	}
	if (!dev) {
		/* unbind */
		rawdev->binding = NULL;
		FUNC8(raw_class, FUNC2(RAW_MAJOR, number));
	} else {
		rawdev->binding = FUNC4(dev);
		if (rawdev->binding == NULL) {
			err = -ENOMEM;
		} else {
			dev_t raw = FUNC2(RAW_MAJOR, number);
			FUNC3(THIS_MODULE);
			FUNC8(raw_class, raw);
			FUNC7(raw_class, NULL, raw, NULL,
				      "raw%d", number);
		}
	}
	FUNC11(&raw_mutex);
	return err;
}