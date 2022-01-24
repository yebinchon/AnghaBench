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
struct xen_vbd {int readonly; int flush_support; int discard_secure; int /*<<< orphan*/  type; struct block_device* bdev; int /*<<< orphan*/  size; int /*<<< orphan*/  pdevice; int /*<<< orphan*/  handle; } ;
struct xen_blkif {int /*<<< orphan*/  domid; struct xen_vbd vbd; } ;
struct request_queue {int /*<<< orphan*/  queue_flags; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef  int /*<<< orphan*/  blkif_vdev_t ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FMODE_READ ; 
 int /*<<< orphan*/  FMODE_WRITE ; 
 int GENHD_FL_CD ; 
 int GENHD_FL_REMOVABLE ; 
 scalar_t__ FUNC0 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  QUEUE_FLAG_WC ; 
 int /*<<< orphan*/  VDISK_CDROM ; 
 int /*<<< orphan*/  VDISK_REMOVABLE ; 
 struct request_queue* FUNC2 (struct block_device*) ; 
 scalar_t__ FUNC3 (struct request_queue*) ; 
 struct block_device* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct xen_vbd*) ; 
 int /*<<< orphan*/  FUNC9 (struct xen_vbd*) ; 

__attribute__((used)) static int FUNC10(struct xen_blkif *blkif, blkif_vdev_t handle,
			  unsigned major, unsigned minor, int readonly,
			  int cdrom)
{
	struct xen_vbd *vbd;
	struct block_device *bdev;
	struct request_queue *q;

	vbd = &blkif->vbd;
	vbd->handle   = handle;
	vbd->readonly = readonly;
	vbd->type     = 0;

	vbd->pdevice  = FUNC1(major, minor);

	bdev = FUNC4(vbd->pdevice, vbd->readonly ?
				 FMODE_READ : FMODE_WRITE, NULL);

	if (FUNC0(bdev)) {
		FUNC6("xen_vbd_create: device %08x could not be opened\n",
			vbd->pdevice);
		return -ENOENT;
	}

	vbd->bdev = bdev;
	if (vbd->bdev->bd_disk == NULL) {
		FUNC6("xen_vbd_create: device %08x doesn't exist\n",
			vbd->pdevice);
		FUNC9(vbd);
		return -ENOENT;
	}
	vbd->size = FUNC8(vbd);

	if (vbd->bdev->bd_disk->flags & GENHD_FL_CD || cdrom)
		vbd->type |= VDISK_CDROM;
	if (vbd->bdev->bd_disk->flags & GENHD_FL_REMOVABLE)
		vbd->type |= VDISK_REMOVABLE;

	q = FUNC2(bdev);
	if (q && FUNC7(QUEUE_FLAG_WC, &q->queue_flags))
		vbd->flush_support = true;

	if (q && FUNC3(q))
		vbd->discard_secure = true;

	FUNC5("Successful creation of handle=%04x (dom=%u)\n",
		handle, blkif->domid);
	return 0;
}