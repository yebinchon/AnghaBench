#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct meta_data_on_disk {void* al_stripe_size_4k; void* al_stripes; void* la_peer_max_bio_size; void* bm_offset; void* device_uuid; void* bm_bytes_per_bit; void* al_nr_extents; void* al_offset; void* md_size_sect; void* magic; void* flags; void** uuid; void* la_size_sect; } ;
struct drbd_device {TYPE_3__* ldev; int /*<<< orphan*/  peer_max_bio_size; TYPE_1__* act_log; int /*<<< orphan*/  this_bdev; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_6__ {scalar_t__ md_offset; int /*<<< orphan*/  al_stripe_size_4k; int /*<<< orphan*/  al_stripes; int /*<<< orphan*/  bm_offset; int /*<<< orphan*/  device_uuid; int /*<<< orphan*/  al_offset; int /*<<< orphan*/  md_size_sect; int /*<<< orphan*/  flags; int /*<<< orphan*/ * uuid; } ;
struct TYPE_7__ {TYPE_2__ md; } ;
struct TYPE_5__ {int /*<<< orphan*/  nr_elements; } ;

/* Variables and functions */
 int /*<<< orphan*/  BM_BLOCK_SIZE ; 
 int /*<<< orphan*/  DRBD_MD_MAGIC_84_UNCLEAN ; 
 int /*<<< orphan*/  DRBD_META_IO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,int) ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int UI_CURRENT ; 
 int UI_SIZE ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drbd_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drbd_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (struct drbd_device*,TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct meta_data_on_disk*,int /*<<< orphan*/ ,int) ; 

void FUNC9(struct drbd_device *device, void *b)
{
	struct meta_data_on_disk *buffer = b;
	sector_t sector;
	int i;

	FUNC8(buffer, 0, sizeof(*buffer));

	buffer->la_size_sect = FUNC2(FUNC5(device->this_bdev));
	for (i = UI_CURRENT; i < UI_SIZE; i++)
		buffer->uuid[i] = FUNC2(device->ldev->md.uuid[i]);
	buffer->flags = FUNC1(device->ldev->md.flags);
	buffer->magic = FUNC1(DRBD_MD_MAGIC_84_UNCLEAN);

	buffer->md_size_sect  = FUNC1(device->ldev->md.md_size_sect);
	buffer->al_offset     = FUNC1(device->ldev->md.al_offset);
	buffer->al_nr_extents = FUNC1(device->act_log->nr_elements);
	buffer->bm_bytes_per_bit = FUNC1(BM_BLOCK_SIZE);
	buffer->device_uuid = FUNC2(device->ldev->md.device_uuid);

	buffer->bm_offset = FUNC1(device->ldev->md.bm_offset);
	buffer->la_peer_max_bio_size = FUNC1(device->peer_max_bio_size);

	buffer->al_stripes = FUNC1(device->ldev->md.al_stripes);
	buffer->al_stripe_size_4k = FUNC1(device->ldev->md.al_stripe_size_4k);

	FUNC0(device, FUNC6(device->ldev) == device->ldev->md.md_offset);
	sector = device->ldev->md.md_offset;

	if (FUNC7(device, device->ldev, sector, REQ_OP_WRITE)) {
		/* this was a try anyways ... */
		FUNC4(device, "meta data update failed!\n");
		FUNC3(device, 1, DRBD_META_IO_ERROR);
	}
}