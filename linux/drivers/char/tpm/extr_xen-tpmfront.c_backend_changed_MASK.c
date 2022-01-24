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
struct xenbus_device {int const state; int /*<<< orphan*/  dev; int /*<<< orphan*/  otherend; } ;
typedef  enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
#define  XenbusStateClosed 131 
#define  XenbusStateClosing 130 
#define  XenbusStateConnected 129 
#define  XenbusStateInitialised 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xenbus_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct xenbus_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xenbus_device*,int const) ; 

__attribute__((used)) static void FUNC5(struct xenbus_device *dev,
		enum xenbus_state backend_state)
{
	switch (backend_state) {
	case XenbusStateInitialised:
	case XenbusStateConnected:
		if (dev->state == XenbusStateConnected)
			break;

		if (!FUNC3(dev->otherend, "feature-protocol-v2",
					  0)) {
			FUNC1(dev, -EINVAL,
					"vTPM protocol 2 required");
			return;
		}
		FUNC4(dev, XenbusStateConnected);
		break;

	case XenbusStateClosing:
	case XenbusStateClosed:
		FUNC0(&dev->dev);
		FUNC2(dev);
		break;
	default:
		break;
	}
}