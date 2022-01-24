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
struct drbd_peer_device {int /*<<< orphan*/  device; } ;
struct drbd_connection {int /*<<< orphan*/  peer_devices; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct drbd_peer_device* FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(struct drbd_connection *connection)
{
	struct drbd_peer_device *peer_device;
	int vnr = 0, minor = -1;

	FUNC2();
	peer_device = FUNC1(&connection->peer_devices, &vnr);
	if (peer_device)
		minor = FUNC0(peer_device->device);
	FUNC3();

	return minor;
}