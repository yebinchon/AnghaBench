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
struct drbd_socket {int /*<<< orphan*/  mutex; scalar_t__ socket; } ;
struct drbd_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* connection; } ;
struct TYPE_3__ {struct drbd_socket data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drbd_device*) ; 
 TYPE_2__* FUNC1 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct drbd_device *device)
{
	struct drbd_socket *sock = &FUNC1(device)->connection->data;
	int err = -1;

	FUNC2(&sock->mutex);
	if (sock->socket)
		err = !FUNC0(device);
	FUNC3(&sock->mutex);
	return err;
}