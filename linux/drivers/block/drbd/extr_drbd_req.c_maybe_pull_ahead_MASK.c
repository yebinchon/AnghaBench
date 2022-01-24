#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_conf {int on_congestion; scalar_t__ cong_fill; scalar_t__ cong_extents; } ;
struct TYPE_4__ {scalar_t__ conn; } ;
struct drbd_device {TYPE_2__* act_log; int /*<<< orphan*/  ap_in_flight; TYPE_1__ state; } ;
struct drbd_connection {int agreed_pro_version; int /*<<< orphan*/  net_conf; } ;
typedef  enum drbd_on_congestion { ____Placeholder_drbd_on_congestion } drbd_on_congestion ;
struct TYPE_6__ {struct drbd_connection* connection; } ;
struct TYPE_5__ {scalar_t__ used; } ;

/* Variables and functions */
 scalar_t__ C_AHEAD ; 
 scalar_t__ C_DISCONNECTING ; 
 int /*<<< orphan*/  D_UP_TO_DATE ; 
 int OC_BLOCK ; 
 int OC_PULL_AHEAD ; 
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC3 (struct drbd_device*,char*) ; 
 TYPE_3__* FUNC4 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drbd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drbd_device*) ; 
 struct net_conf* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct drbd_connection*) ; 

__attribute__((used)) static void FUNC11(struct drbd_device *device)
{
	struct drbd_connection *connection = FUNC4(device)->connection;
	struct net_conf *nc;
	bool congested = false;
	enum drbd_on_congestion on_congestion;

	FUNC8();
	nc = FUNC7(connection->net_conf);
	on_congestion = nc ? nc->on_congestion : OC_BLOCK;
	FUNC9();
	if (on_congestion == OC_BLOCK ||
	    connection->agreed_pro_version < 96)
		return;

	if (on_congestion == OC_PULL_AHEAD && device->state.conn == C_AHEAD)
		return; /* nothing to do ... */

	/* If I don't even have good local storage, we can not reasonably try
	 * to pull ahead of the peer. We also need the local reference to make
	 * sure device->act_log is there.
	 */
	if (!FUNC5(device, D_UP_TO_DATE))
		return;

	if (nc->cong_fill &&
	    FUNC2(&device->ap_in_flight) >= nc->cong_fill) {
		FUNC3(device, "Congestion-fill threshold reached\n");
		congested = true;
	}

	if (device->act_log->used >= nc->cong_extents) {
		FUNC3(device, "Congestion-extents threshold reached\n");
		congested = true;
	}

	if (congested) {
		/* start a new epoch for non-mirrored writes */
		FUNC10(FUNC4(device)->connection);

		if (on_congestion == OC_PULL_AHEAD)
			FUNC1(FUNC0(device, conn, C_AHEAD), 0, NULL);
		else  /*nc->on_congestion == OC_DISCONNECT */
			FUNC1(FUNC0(device, conn, C_DISCONNECTING), 0, NULL);
	}
	FUNC6(device);
}