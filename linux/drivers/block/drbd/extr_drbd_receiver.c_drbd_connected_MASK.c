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
struct drbd_peer_device {TYPE_1__* connection; struct drbd_device* device; } ;
struct drbd_device {int /*<<< orphan*/  request_timer; int /*<<< orphan*/  ap_in_flight; int /*<<< orphan*/  flags; int /*<<< orphan*/  own_state_mutex; int /*<<< orphan*/ * state_mutex; scalar_t__ peer_seq; int /*<<< orphan*/  packet_seq; } ;
struct TYPE_2__ {int agreed_pro_version; int /*<<< orphan*/  cstate_mutex; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  RESIZE_PENDING ; 
 int /*<<< orphan*/  USE_DEGR_WFC_T ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct drbd_peer_device*) ; 
 int FUNC3 (struct drbd_peer_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drbd_peer_device*) ; 
 int FUNC5 (struct drbd_peer_device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC7(struct drbd_peer_device *peer_device)
{
	struct drbd_device *device = peer_device->device;
	int err;

	FUNC0(&device->packet_seq, 0);
	device->peer_seq = 0;

	device->state_mutex = peer_device->connection->agreed_pro_version < 100 ?
		&peer_device->connection->cstate_mutex :
		&device->own_state_mutex;

	err = FUNC4(peer_device);
	if (!err)
		err = FUNC3(peer_device, 0, 0);
	if (!err)
		err = FUNC5(peer_device);
	if (!err)
		err = FUNC2(peer_device);
	FUNC1(USE_DEGR_WFC_T, &device->flags);
	FUNC1(RESIZE_PENDING, &device->flags);
	FUNC0(&device->ap_in_flight, 0);
	FUNC6(&device->request_timer, jiffies + HZ); /* just start it here. */
	return err;
}