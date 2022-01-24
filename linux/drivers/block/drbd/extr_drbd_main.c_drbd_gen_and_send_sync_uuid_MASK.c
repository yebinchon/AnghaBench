#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct p_rs_uuid {int /*<<< orphan*/  uuid; } ;
struct drbd_socket {int dummy; } ;
struct drbd_peer_device {TYPE_4__* connection; struct drbd_device* device; } ;
struct TYPE_5__ {scalar_t__ disk; } ;
struct drbd_device {TYPE_3__* ldev; TYPE_1__ state; } ;
struct TYPE_8__ {struct drbd_socket data; } ;
struct TYPE_6__ {scalar_t__* uuid; } ;
struct TYPE_7__ {TYPE_2__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,int) ; 
 scalar_t__ D_UP_TO_DATE ; 
 int /*<<< orphan*/  P_SYNC_UUID ; 
 size_t UI_BITMAP ; 
 scalar_t__ UUID_JUST_CREATED ; 
 scalar_t__ UUID_NEW_BM_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_device*) ; 
 struct p_rs_uuid* FUNC3 (struct drbd_peer_device*,struct drbd_socket*) ; 
 int /*<<< orphan*/  FUNC4 (struct drbd_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct drbd_peer_device*,struct drbd_socket*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drbd_device*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int) ; 

void FUNC8(struct drbd_peer_device *peer_device)
{
	struct drbd_device *device = peer_device->device;
	struct drbd_socket *sock;
	struct p_rs_uuid *p;
	u64 uuid;

	FUNC0(device, device->state.disk == D_UP_TO_DATE);

	uuid = device->ldev->md.uuid[UI_BITMAP];
	if (uuid && uuid != UUID_JUST_CREATED)
		uuid = uuid + UUID_NEW_BM_OFFSET;
	else
		FUNC7(&uuid, sizeof(u64));
	FUNC6(device, UI_BITMAP, uuid);
	FUNC4(device, "updated sync UUID");
	FUNC2(device);

	sock = &peer_device->connection->data;
	p = FUNC3(peer_device, sock);
	if (p) {
		p->uuid = FUNC1(uuid);
		FUNC5(peer_device, sock, P_SYNC_UUID, sizeof(*p), NULL, 0);
	}
}