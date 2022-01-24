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
struct p_state {int /*<<< orphan*/  state; } ;
struct drbd_socket {int dummy; } ;
struct drbd_peer_device {TYPE_3__* device; TYPE_1__* connection; } ;
struct TYPE_5__ {int /*<<< orphan*/  i; } ;
struct TYPE_6__ {TYPE_2__ state; } ;
struct TYPE_4__ {struct drbd_socket data; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  P_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct p_state* FUNC1 (struct drbd_peer_device*,struct drbd_socket*) ; 
 int FUNC2 (struct drbd_peer_device*,struct drbd_socket*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(struct drbd_peer_device *peer_device)
{
	struct drbd_socket *sock;
	struct p_state *p;

	sock = &peer_device->connection->data;
	p = FUNC1(peer_device, sock);
	if (!p)
		return -EIO;
	p->state = FUNC0(peer_device->device->state.i); /* Within the send mutex */
	return FUNC2(peer_device, sock, P_STATE, sizeof(*p), NULL, 0);
}