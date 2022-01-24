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
struct packing_data {int /*<<< orphan*/  repo; } ;
struct bitmap_index {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  show_progress; int /*<<< orphan*/  reused; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct bitmap_index* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bitmap_index*,struct packing_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ writer ; 

void FUNC3(struct packing_data *to_pack)
{
	struct bitmap_index *bitmap_git;
	if (!(bitmap_git = FUNC1(to_pack->repo)))
		return;

	writer.reused = FUNC0();
	FUNC2(bitmap_git, to_pack, writer.reused,
				 writer.show_progress);
	/*
	 * NEEDSWORK: rebuild_existing_bitmaps() makes writer.reused reference
	 * some bitmaps in bitmap_git, so we can't free the latter.
	 */
}