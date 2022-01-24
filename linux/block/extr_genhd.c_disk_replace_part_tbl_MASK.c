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
struct gendisk {int /*<<< orphan*/  part_tbl; } ;
struct disk_part_tbl {int /*<<< orphan*/  last_lookup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct disk_part_tbl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct disk_part_tbl*) ; 
 struct disk_part_tbl* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rcu_head ; 

__attribute__((used)) static void FUNC3(struct gendisk *disk,
				  struct disk_part_tbl *new_ptbl)
{
	struct disk_part_tbl *old_ptbl =
		FUNC2(disk->part_tbl, 1);

	FUNC1(disk->part_tbl, new_ptbl);

	if (old_ptbl) {
		FUNC1(old_ptbl->last_lookup, NULL);
		FUNC0(old_ptbl, rcu_head);
	}
}