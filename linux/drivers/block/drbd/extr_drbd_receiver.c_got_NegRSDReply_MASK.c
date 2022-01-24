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
struct packet_info {int cmd; int /*<<< orphan*/  vnr; struct p_block_ack* data; } ;
struct p_block_ack {int /*<<< orphan*/  seq_num; int /*<<< orphan*/  blksize; int /*<<< orphan*/  sector; } ;
struct drbd_peer_device {struct drbd_device* device; } ;
struct drbd_device {int dummy; } ;
struct drbd_connection {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  D_FAILED ; 
 int EIO ; 
#define  P_NEG_RS_DREPLY 129 
#define  P_RS_CANCEL 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct drbd_peer_device* FUNC3 (struct drbd_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drbd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drbd_device*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct drbd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drbd_peer_device*,int) ; 

__attribute__((used)) static int FUNC10(struct drbd_connection *connection, struct packet_info *pi)
{
	struct drbd_peer_device *peer_device;
	struct drbd_device *device;
	sector_t sector;
	int size;
	struct p_block_ack *p = pi->data;

	peer_device = FUNC3(connection, pi->vnr);
	if (!peer_device)
		return -EIO;
	device = peer_device->device;

	sector = FUNC2(p->sector);
	size = FUNC1(p->blksize);

	FUNC9(peer_device, FUNC1(p->seq_num));

	FUNC4(device);

	if (FUNC7(device, D_FAILED)) {
		FUNC5(device, sector);
		switch (pi->cmd) {
		case P_NEG_RS_DREPLY:
			FUNC6(device, sector, size);
		case P_RS_CANCEL:
			break;
		default:
			FUNC0();
		}
		FUNC8(device);
	}

	return 0;
}