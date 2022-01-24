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
struct xenbus_device {int state; int /*<<< orphan*/  dev; } ;
struct blkfront_info {int dummy; } ;
typedef  enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;

/* Variables and functions */
#define  XenbusStateClosed 136 
#define  XenbusStateClosing 135 
#define  XenbusStateConnected 134 
#define  XenbusStateInitWait 133 
#define  XenbusStateInitialised 132 
#define  XenbusStateInitialising 131 
#define  XenbusStateReconfigured 130 
#define  XenbusStateReconfiguring 129 
#define  XenbusStateUnknown 128 
 int /*<<< orphan*/  FUNC0 (struct blkfront_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct blkfront_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct blkfront_info* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xenbus_device*,struct blkfront_info*) ; 

__attribute__((used)) static void FUNC5(struct xenbus_device *dev,
			    enum xenbus_state backend_state)
{
	struct blkfront_info *info = FUNC3(&dev->dev);

	FUNC2(&dev->dev, "blkfront:blkback_changed to state %d.\n", backend_state);

	switch (backend_state) {
	case XenbusStateInitWait:
		if (dev->state != XenbusStateInitialising)
			break;
		if (FUNC4(dev, info))
			break;
	case XenbusStateInitialising:
	case XenbusStateInitialised:
	case XenbusStateReconfiguring:
	case XenbusStateReconfigured:
	case XenbusStateUnknown:
		break;

	case XenbusStateConnected:
		/*
		 * talk_to_blkback sets state to XenbusStateInitialised
		 * and blkfront_connect sets it to XenbusStateConnected
		 * (if connection went OK).
		 *
		 * If the backend (or toolstack) decides to poke at backend
		 * state (and re-trigger the watch by setting the state repeatedly
		 * to XenbusStateConnected (4)) we need to deal with this.
		 * This is allowed as this is used to communicate to the guest
		 * that the size of disk has changed!
		 */
		if ((dev->state != XenbusStateInitialised) &&
		    (dev->state != XenbusStateConnected)) {
			if (FUNC4(dev, info))
				break;
		}

		FUNC1(info);
		break;

	case XenbusStateClosed:
		if (dev->state == XenbusStateClosed)
			break;
		/* fall through */
	case XenbusStateClosing:
		if (info)
			FUNC0(info);
		break;
	}
}