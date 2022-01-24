#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct p_uuids {void** uuid; } ;
struct drbd_socket {int dummy; } ;
struct drbd_peer_device {TYPE_3__* connection; struct drbd_device* device; } ;
struct TYPE_9__ {scalar_t__ disk; } ;
struct drbd_device {int comm_bm_set; TYPE_4__ new_state_tmp; int /*<<< orphan*/  flags; TYPE_2__* ldev; } ;
struct TYPE_10__ {scalar_t__ discard_my_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  net_conf; struct drbd_socket data; } ;
struct TYPE_6__ {int* uuid; int /*<<< orphan*/  uuid_lock; } ;
struct TYPE_7__ {TYPE_1__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRASHED_PRIMARY ; 
 scalar_t__ D_INCONSISTENT ; 
 int /*<<< orphan*/  D_NEGOTIATING ; 
 int EIO ; 
 int /*<<< orphan*/  P_UUIDS ; 
 int UI_CURRENT ; 
 size_t UI_FLAGS ; 
 int UI_SIZE ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct drbd_device*) ; 
 struct p_uuids* FUNC2 (struct drbd_peer_device*,struct drbd_socket*) ; 
 int FUNC3 (struct drbd_peer_device*,struct drbd_socket*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drbd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drbd_device*) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct drbd_peer_device *peer_device, u64 uuid_flags)
{
	struct drbd_device *device = peer_device->device;
	struct drbd_socket *sock;
	struct p_uuids *p;
	int i;

	if (!FUNC4(device, D_NEGOTIATING))
		return 0;

	sock = &peer_device->connection->data;
	p = FUNC2(peer_device, sock);
	if (!p) {
		FUNC5(device);
		return -EIO;
	}
	FUNC9(&device->ldev->md.uuid_lock);
	for (i = UI_CURRENT; i < UI_SIZE; i++)
		p->uuid[i] = FUNC0(device->ldev->md.uuid[i]);
	FUNC10(&device->ldev->md.uuid_lock);

	device->comm_bm_set = FUNC1(device);
	p->uuid[UI_SIZE] = FUNC0(device->comm_bm_set);
	FUNC7();
	uuid_flags |= FUNC6(peer_device->connection->net_conf)->discard_my_data ? 1 : 0;
	FUNC8();
	uuid_flags |= FUNC11(CRASHED_PRIMARY, &device->flags) ? 2 : 0;
	uuid_flags |= device->new_state_tmp.disk == D_INCONSISTENT ? 4 : 0;
	p->uuid[UI_FLAGS] = FUNC0(uuid_flags);

	FUNC5(device);
	return FUNC3(peer_device, sock, P_UUIDS, sizeof(*p), NULL, 0);
}