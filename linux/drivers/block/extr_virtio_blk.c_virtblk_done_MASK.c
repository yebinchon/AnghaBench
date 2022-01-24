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
struct virtqueue {int index; TYPE_3__* vdev; } ;
struct virtio_blk {TYPE_2__* vqs; TYPE_1__* disk; } ;
struct virtblk_req {int dummy; } ;
struct request {int dummy; } ;
struct TYPE_6__ {struct virtio_blk* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  vq; } ;
struct TYPE_4__ {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 struct request* FUNC1 (struct virtblk_req*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC7 (struct virtqueue*) ; 
 struct virtblk_req* FUNC8 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (struct virtqueue*) ; 

__attribute__((used)) static void FUNC10(struct virtqueue *vq)
{
	struct virtio_blk *vblk = vq->vdev->priv;
	bool req_done = false;
	int qid = vq->index;
	struct virtblk_req *vbr;
	unsigned long flags;
	unsigned int len;

	FUNC3(&vblk->vqs[qid].lock, flags);
	do {
		FUNC6(vq);
		while ((vbr = FUNC8(vblk->vqs[qid].vq, &len)) != NULL) {
			struct request *req = FUNC1(vbr);

			FUNC0(req);
			req_done = true;
		}
		if (FUNC5(FUNC9(vq)))
			break;
	} while (!FUNC7(vq));

	/* In case queue is stopped waiting for more buffers. */
	if (req_done)
		FUNC2(vblk->disk->queue, true);
	FUNC4(&vblk->vqs[qid].lock, flags);
}