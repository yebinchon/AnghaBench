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
struct hd_struct {int /*<<< orphan*/  holder_dir; } ;
struct gendisk {int /*<<< orphan*/  part_tbl; } ;
struct disk_part_tbl {int len; int /*<<< orphan*/  last_lookup; int /*<<< orphan*/ * part; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int) ; 

void FUNC8(struct gendisk *disk, int partno)
{
	struct disk_part_tbl *ptbl =
		FUNC7(disk->part_tbl, 1);
	struct hd_struct *part;

	if (partno >= ptbl->len)
		return;

	part = FUNC7(ptbl->part[partno], 1);
	if (!part)
		return;

	FUNC6(ptbl->part[partno], NULL);
	FUNC6(ptbl->last_lookup, NULL);
	FUNC3(part->holder_dir);
	FUNC1(FUNC5(part));

	/*
	 * Remove gendisk pointer from idr so that it cannot be looked up
	 * while RCU period before freeing gendisk is running to prevent
	 * use-after-free issues. Note that the device number stays
	 * "in-use" until we really free the gendisk.
	 */
	FUNC0(FUNC4(part));
	FUNC2(part);
}