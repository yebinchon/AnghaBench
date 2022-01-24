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
struct p_block_req {int /*<<< orphan*/  blksize; int /*<<< orphan*/  block_id; int /*<<< orphan*/  sector; } ;
struct drbd_socket {int dummy; } ;
struct drbd_peer_device {TYPE_1__* connection; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_2__ {struct drbd_socket data; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ID_SYNCER ; 
 int /*<<< orphan*/  P_OV_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct p_block_req* FUNC2 (struct drbd_peer_device*,struct drbd_socket*) ; 
 int FUNC3 (struct drbd_peer_device*,struct drbd_socket*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(struct drbd_peer_device *peer_device, sector_t sector, int size)
{
	struct drbd_socket *sock;
	struct p_block_req *p;

	sock = &peer_device->connection->data;
	p = FUNC2(peer_device, sock);
	if (!p)
		return -EIO;
	p->sector = FUNC1(sector);
	p->block_id = ID_SYNCER /* unused */;
	p->blksize = FUNC0(size);
	return FUNC3(peer_device, sock, P_OV_REQUEST, sizeof(*p), NULL, 0);
}