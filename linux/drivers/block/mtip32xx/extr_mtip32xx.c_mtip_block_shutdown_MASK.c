#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct driver_data {int /*<<< orphan*/  index; int /*<<< orphan*/ * queue; TYPE_2__* disk; int /*<<< orphan*/  tags; int /*<<< orphan*/  dd_flag; TYPE_1__* pdev; } ;
struct TYPE_5__ {scalar_t__ queue; int /*<<< orphan*/  disk_name; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTIP_DDF_INIT_DONE_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  rssd_index_ida ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct driver_data *dd)
{
	FUNC5(dd);

	/* Delete our gendisk structure, and cleanup the blk queue. */
	if (dd->disk) {
		FUNC3(&dd->pdev->dev,
			"Shutting down %s ...\n", dd->disk->disk_name);

		if (FUNC7(MTIP_DDF_INIT_DONE_BIT, &dd->dd_flag))
			FUNC2(dd->disk);
		if (dd->disk->queue) {
			FUNC0(dd->queue);
			FUNC1(&dd->tags);
		}
		FUNC6(dd->disk);
		dd->disk  = NULL;
		dd->queue = NULL;
	}

	FUNC4(&rssd_index_ida, dd->index);
	return 0;
}