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
struct packet_info {int /*<<< orphan*/  vnr; struct p_block_ack* data; } ;
struct p_block_ack {int /*<<< orphan*/  block_id; int /*<<< orphan*/  seq_num; int /*<<< orphan*/  blksize; int /*<<< orphan*/  sector; } ;
struct drbd_peer_device {TYPE_1__* connection; struct drbd_device* device; } ;
struct TYPE_4__ {int /*<<< orphan*/  cb; } ;
struct drbd_device_work {TYPE_2__ w; struct drbd_device* device; } ;
struct drbd_device {int ov_left; } ;
struct drbd_connection {int dummy; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_3__ {int /*<<< orphan*/  sender_work; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ ID_OUT_OF_SYNC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct drbd_peer_device* FUNC2 (struct drbd_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drbd_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drbd_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct drbd_device*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drbd_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct drbd_device*) ; 
 struct drbd_device_work* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct drbd_peer_device*,int) ; 
 int /*<<< orphan*/  w_ov_finished ; 

__attribute__((used)) static int FUNC15(struct drbd_connection *connection, struct packet_info *pi)
{
	struct drbd_peer_device *peer_device;
	struct drbd_device *device;
	struct p_block_ack *p = pi->data;
	struct drbd_device_work *dw;
	sector_t sector;
	int size;

	peer_device = FUNC2(connection, pi->vnr);
	if (!peer_device)
		return -EIO;
	device = peer_device->device;

	sector = FUNC1(p->sector);
	size = FUNC0(p->blksize);

	FUNC14(peer_device, FUNC0(p->seq_num));

	if (FUNC1(p->block_id) == ID_OUT_OF_SYNC)
		FUNC6(device, sector, size);
	else
		FUNC12(device);

	if (!FUNC10(device))
		return 0;

	FUNC9(device, sector);
	FUNC3(device);

	--device->ov_left;

	/* let's advance progress step marks only for every other megabyte */
	if ((device->ov_left & 0x200) == 0x200)
		FUNC4(device, device->ov_left);

	if (device->ov_left == 0) {
		dw = FUNC11(sizeof(*dw), GFP_NOIO);
		if (dw) {
			dw->w.cb = w_ov_finished;
			dw->device = device;
			FUNC7(&peer_device->connection->sender_work, &dw->w);
		} else {
			FUNC5(device, "kmalloc(dw) failed.");
			FUNC12(device);
			FUNC8(device);
		}
	}
	FUNC13(device);
	return 0;
}