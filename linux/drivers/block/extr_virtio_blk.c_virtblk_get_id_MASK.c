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
struct virtio_blk {TYPE_1__* disk; } ;
struct request_queue {int dummy; } ;
struct request {int dummy; } ;
struct gendisk {struct virtio_blk* private_data; } ;
struct TYPE_2__ {struct request_queue* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct request*) ; 
 int FUNC1 (struct request*) ; 
 int /*<<< orphan*/  REQ_OP_DRV_IN ; 
 int /*<<< orphan*/  VIRTIO_BLK_ID_BYTES ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,TYPE_1__*,struct request*,int) ; 
 struct request* FUNC3 (struct request_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (struct request*) ; 
 int FUNC6 (struct request_queue*,struct request*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct gendisk *disk, char *id_str)
{
	struct virtio_blk *vblk = disk->private_data;
	struct request_queue *q = vblk->disk->queue;
	struct request *req;
	int err;

	req = FUNC3(q, REQ_OP_DRV_IN, 0);
	if (FUNC0(req))
		return FUNC1(req);

	err = FUNC6(q, req, id_str, VIRTIO_BLK_ID_BYTES, GFP_KERNEL);
	if (err)
		goto out;

	FUNC2(vblk->disk->queue, vblk->disk, req, false);
	err = FUNC7(FUNC8(FUNC4(req)));
out:
	FUNC5(req);
	return err;
}