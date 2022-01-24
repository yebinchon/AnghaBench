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
struct request_queue {int dummy; } ;
struct nbd_device {scalar_t__ destroy_complete; int /*<<< orphan*/  flags; int /*<<< orphan*/  tag_set; struct gendisk* disk; } ;
struct gendisk {int /*<<< orphan*/ * private_data; struct request_queue* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  NBD_DESTROY_ON_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC4 (struct nbd_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct gendisk*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct nbd_device *nbd)
{
	struct gendisk *disk = nbd->disk;
	struct request_queue *q;

	if (disk) {
		q = disk->queue;
		FUNC3(disk);
		FUNC0(q);
		FUNC1(&nbd->tag_set);
		disk->private_data = NULL;
		FUNC5(disk);
	}

	/*
	 * Place this in the last just before the nbd is freed to
	 * make sure that the disk and the related kobject are also
	 * totally removed to avoid duplicate creation of the same
	 * one.
	 */
	if (FUNC6(NBD_DESTROY_ON_DISCONNECT, &nbd->flags) && nbd->destroy_complete)
		FUNC2(nbd->destroy_complete);

	FUNC4(nbd);
}