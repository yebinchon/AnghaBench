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
struct TYPE_2__ {unsigned int runtime_status; int /*<<< orphan*/  lock; scalar_t__ runtime_error; int /*<<< orphan*/  child_count; int /*<<< orphan*/  ignore_children; scalar_t__ disable_depth; } ;
struct device {TYPE_1__ power; struct device* parent; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int EINVAL ; 
 unsigned int RPM_ACTIVE ; 
 unsigned int RPM_SUSPENDED ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC0 (struct device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(struct device *dev, unsigned int status)
{
	struct device *parent = dev->parent;
	bool notify_parent = false;
	int error = 0;

	if (status != RPM_ACTIVE && status != RPM_SUSPENDED)
		return -EINVAL;

	FUNC11(&dev->power.lock);

	/*
	 * Prevent PM-runtime from being enabled for the device or return an
	 * error if it is enabled already and working.
	 */
	if (dev->power.runtime_error || dev->power.disable_depth)
		dev->power.disable_depth++;
	else
		error = -EAGAIN;

	FUNC14(&dev->power.lock);

	if (error)
		return error;

	/*
	 * If the new status is RPM_ACTIVE, the suppliers can be activated
	 * upfront regardless of the current status, because next time
	 * rpm_put_suppliers() runs, the rpm_active refcounts of the links
	 * involved will be dropped down to one anyway.
	 */
	if (status == RPM_ACTIVE) {
		int idx = FUNC5();

		error = FUNC9(dev);
		if (error)
			status = RPM_SUSPENDED;

		FUNC6(idx);
	}

	FUNC11(&dev->power.lock);

	if (dev->power.runtime_status == status || !parent)
		goto out_set;

	if (status == RPM_SUSPENDED) {
		FUNC1(&parent->power.child_count, -1, 0);
		notify_parent = !parent->power.ignore_children;
	} else {
		FUNC12(&parent->power.lock, SINGLE_DEPTH_NESTING);

		/*
		 * It is invalid to put an active child under a parent that is
		 * not active, has runtime PM enabled and the
		 * 'power.ignore_children' flag unset.
		 */
		if (!parent->power.disable_depth
		    && !parent->power.ignore_children
		    && parent->power.runtime_status != RPM_ACTIVE) {
			FUNC3(dev, "runtime PM trying to activate child device %s but parent (%s) is not active\n",
				FUNC4(dev),
				FUNC4(parent));
			error = -EBUSY;
		} else if (dev->power.runtime_status == RPM_SUSPENDED) {
			FUNC2(&parent->power.child_count);
		}

		FUNC13(&parent->power.lock);

		if (error) {
			status = RPM_SUSPENDED;
			goto out;
		}
	}

 out_set:
	FUNC0(dev, status);
	if (!error)
		dev->power.runtime_error = 0;

 out:
	FUNC14(&dev->power.lock);

	if (notify_parent)
		FUNC7(parent);

	if (status == RPM_SUSPENDED) {
		int idx = FUNC5();

		FUNC10(dev);

		FUNC6(idx);
	}

	FUNC8(dev);

	return error;
}