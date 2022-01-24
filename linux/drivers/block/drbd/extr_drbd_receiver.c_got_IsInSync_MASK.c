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
struct packet_info {int /*<<< orphan*/  vnr; struct p_block_ack* data; } ;
struct p_block_ack {int /*<<< orphan*/  seq_num; int /*<<< orphan*/  blksize; int /*<<< orphan*/  sector; } ;
struct drbd_peer_device {TYPE_1__* connection; struct drbd_device* device; } ;
struct drbd_device {int rs_same_csum; int /*<<< orphan*/  rs_sect_in; } ;
struct drbd_connection {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_2__ {int agreed_pro_version; } ;

/* Variables and functions */
 int BM_BLOCK_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct drbd_peer_device* FUNC4 (struct drbd_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drbd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drbd_device*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct drbd_peer_device*,int) ; 

__attribute__((used)) static int FUNC11(struct drbd_connection *connection, struct packet_info *pi)
{
	struct drbd_peer_device *peer_device;
	struct drbd_device *device;
	struct p_block_ack *p = pi->data;
	sector_t sector = FUNC3(p->sector);
	int blksize = FUNC2(p->blksize);

	peer_device = FUNC4(connection, pi->vnr);
	if (!peer_device)
		return -EIO;
	device = peer_device->device;

	FUNC0(device, peer_device->connection->agreed_pro_version >= 89);

	FUNC10(peer_device, FUNC2(p->seq_num));

	if (FUNC8(device)) {
		FUNC6(device, sector);
		FUNC7(device, sector, blksize);
		/* rs_same_csums is supposed to count in units of BM_BLOCK_SIZE */
		device->rs_same_csum += (blksize >> BM_BLOCK_SHIFT);
		FUNC9(device);
	}
	FUNC5(device);
	FUNC1(blksize >> 9, &device->rs_sect_in);

	return 0;
}