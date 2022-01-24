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
struct device_attach_data {int check_async; int want_async; scalar_t__ have_async; struct device* dev; } ;
struct device {scalar_t__ parent; int /*<<< orphan*/  bus; int /*<<< orphan*/ * driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  __device_attach_async_helper ; 
 int /*<<< orphan*/  __device_attach_driver ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct device_attach_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct device *dev, bool allow_async)
{
	int ret = 0;

	FUNC5(dev);
	if (dev->driver) {
		if (FUNC4(dev)) {
			ret = 1;
			goto out_unlock;
		}
		ret = FUNC3(dev);
		if (ret == 0)
			ret = 1;
		else {
			dev->driver = NULL;
			ret = 0;
		}
	} else {
		struct device_attach_data data = {
			.dev = dev,
			.check_async = allow_async,
			.want_async = false,
		};

		if (dev->parent)
			FUNC9(dev->parent);

		ret = FUNC1(dev->bus, NULL, &data,
					__device_attach_driver);
		if (!ret && allow_async && data.have_async) {
			/*
			 * If we could not find appropriate driver
			 * synchronously and we are allowed to do
			 * async probes and there are drivers that
			 * want to probe asynchronously, we'll
			 * try them.
			 */
			FUNC2(dev, "scheduling asynchronous probe\n");
			FUNC7(dev);
			FUNC0(__device_attach_async_helper, dev);
		} else {
			FUNC8(dev);
		}

		if (dev->parent)
			FUNC10(dev->parent);
	}
out_unlock:
	FUNC6(dev);
	return ret;
}