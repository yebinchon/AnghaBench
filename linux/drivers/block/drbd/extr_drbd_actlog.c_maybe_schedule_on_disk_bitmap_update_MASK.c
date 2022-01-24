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
struct TYPE_3__ {int /*<<< orphan*/  conn; } ;
struct drbd_device {int /*<<< orphan*/  flags; TYPE_1__ state; } ;
struct drbd_connection {int agreed_pro_version; } ;
struct TYPE_4__ {struct drbd_connection* connection; } ;

/* Variables and functions */
 int /*<<< orphan*/  RS_DONE ; 
 int /*<<< orphan*/  RS_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct drbd_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct drbd_device *device, bool rs_done)
{
	if (rs_done) {
		struct drbd_connection *connection = FUNC1(device)->connection;
		if (connection->agreed_pro_version <= 95 ||
		    FUNC2(device->state.conn))
			FUNC4(RS_DONE, &device->flags);
			/* and also set RS_PROGRESS below */

		/* Else: rather wait for explicit notification via receive_state,
		 * to avoid uuids-rotated-too-fast causing full resync
		 * in next handshake, in case the replication link breaks
		 * at the most unfortunate time... */
	} else if (!FUNC3(device))
		return;

	FUNC0(device, RS_PROGRESS);
}