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
struct hd_struct {scalar_t__ partno; } ;
struct gendisk {scalar_t__ minors; scalar_t__ first_minor; int /*<<< orphan*/  major; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_EXT_MAJOR ; 
 int EBUSY ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  NR_EXT_DEVT ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  ext_devt_idr ; 
 int /*<<< orphan*/  ext_devt_lock ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hd_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct gendisk* FUNC5 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct hd_struct *part, dev_t *devt)
{
	struct gendisk *disk = FUNC5(part);
	int idx;

	/* in consecutive minor range? */
	if (part->partno < disk->minors) {
		*devt = FUNC0(disk->major, disk->first_minor + part->partno);
		return 0;
	}

	/* allocate ext devt */
	FUNC3(GFP_KERNEL);

	FUNC6(&ext_devt_lock);
	idx = FUNC2(&ext_devt_idr, part, 0, NR_EXT_DEVT, GFP_NOWAIT);
	FUNC7(&ext_devt_lock);

	FUNC4();
	if (idx < 0)
		return idx == -ENOSPC ? -EBUSY : idx;

	*devt = FUNC0(BLOCK_EXT_MAJOR, FUNC1(idx));
	return 0;
}