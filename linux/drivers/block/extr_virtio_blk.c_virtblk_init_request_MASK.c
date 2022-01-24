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
struct virtio_blk {int /*<<< orphan*/  sg_elems; } ;
struct TYPE_2__ {int /*<<< orphan*/  sense; } ;
struct virtblk_req {int /*<<< orphan*/  sg; int /*<<< orphan*/  sense; TYPE_1__ sreq; } ;
struct request {int dummy; } ;
struct blk_mq_tag_set {struct virtio_blk* driver_data; } ;

/* Variables and functions */
 struct virtblk_req* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct blk_mq_tag_set *set, struct request *rq,
		unsigned int hctx_idx, unsigned int numa_node)
{
	struct virtio_blk *vblk = set->driver_data;
	struct virtblk_req *vbr = FUNC0(rq);

#ifdef CONFIG_VIRTIO_BLK_SCSI
	vbr->sreq.sense = vbr->sense;
#endif
	FUNC1(vbr->sg, vblk->sg_elems);
	return 0;
}