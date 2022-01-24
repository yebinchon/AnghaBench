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
union drbd_state {int /*<<< orphan*/  i; } ;
struct p_req_state {void* val; void* mask; } ;
struct drbd_socket {int dummy; } ;
struct drbd_peer_device {TYPE_1__* connection; } ;
struct TYPE_2__ {struct drbd_socket data; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  P_STATE_CHG_REQ ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct p_req_state* FUNC1 (struct drbd_peer_device*,struct drbd_socket*) ; 
 int FUNC2 (struct drbd_peer_device*,struct drbd_socket*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(struct drbd_peer_device *peer_device, union drbd_state mask, union drbd_state val)
{
	struct drbd_socket *sock;
	struct p_req_state *p;

	sock = &peer_device->connection->data;
	p = FUNC1(peer_device, sock);
	if (!p)
		return -EIO;
	p->mask = FUNC0(mask.i);
	p->val = FUNC0(val.i);
	return FUNC2(peer_device, sock, P_STATE_CHG_REQ, sizeof(*p), NULL, 0);
}