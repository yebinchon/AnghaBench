#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct kobject {int dummy; } ;
struct driver_data {int /*<<< orphan*/  index; TYPE_2__* disk; int /*<<< orphan*/ * queue; int /*<<< orphan*/  tags; int /*<<< orphan*/  dd_flag; int /*<<< orphan*/ * bdev; TYPE_1__* pdev; TYPE_3__* port; int /*<<< orphan*/  sr; scalar_t__ mtip_svc_handler; } ;
struct TYPE_10__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_9__ {int /*<<< orphan*/  svc_wait; int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {scalar_t__ queue; int /*<<< orphan*/  disk_name; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTIP_DDF_INIT_DONE_BIT ; 
 int /*<<< orphan*/  MTIP_PF_SVC_THD_STOP_BIT ; 
 int /*<<< orphan*/  MTIP_QUIESCE_IO_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct driver_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct kobject* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC15 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC16 (struct driver_data*,struct kobject*) ; 
 int /*<<< orphan*/  mtip_no_dev_cleanup ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  rssd_index_ida ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct driver_data *dd)
{
	struct kobject *kobj;

	FUNC14(dd);

	if (dd->mtip_svc_handler) {
		FUNC20(MTIP_PF_SVC_THD_STOP_BIT, &dd->port->flags);
		FUNC22(&dd->port->svc_wait);
		FUNC13(dd->mtip_svc_handler);
	}

	/* Clean up the sysfs attributes, if created */
	if (FUNC21(MTIP_DDF_INIT_DONE_BIT, &dd->dd_flag)) {
		kobj = FUNC11(&FUNC9(dd->disk)->kobj);
		if (kobj) {
			FUNC16(dd, kobj);
			FUNC12(kobj);
		}
	}

	if (!dd->sr) {
		/*
		 * Explicitly wait here for IOs to quiesce,
		 * as mtip_standby_drive usually won't wait for IOs.
		 */
		if (!FUNC17(dd->port, MTIP_QUIESCE_IO_TIMEOUT_MS))
			FUNC18(dd);
	}
	else
		FUNC8(&dd->pdev->dev, "device %s surprise removal\n",
						dd->disk->disk_name);

	FUNC2(dd->queue);
	FUNC4(dd->queue);
	FUNC5(&dd->tags, mtip_no_dev_cleanup, dd);
	FUNC6(dd->queue);

	/*
	 * Delete our gendisk structure. This also removes the device
	 * from /dev
	 */
	if (dd->bdev) {
		FUNC0(dd->bdev);
		dd->bdev = NULL;
	}
	if (dd->disk) {
		if (FUNC21(MTIP_DDF_INIT_DONE_BIT, &dd->dd_flag))
			FUNC7(dd->disk);
		if (dd->disk->queue) {
			FUNC1(dd->queue);
			FUNC3(&dd->tags);
			dd->queue = NULL;
		}
		FUNC19(dd->disk);
	}
	dd->disk  = NULL;

	FUNC10(&rssd_index_ida, dd->index);

	/* De-initialize the protocol layer. */
	FUNC15(dd);

	return 0;
}