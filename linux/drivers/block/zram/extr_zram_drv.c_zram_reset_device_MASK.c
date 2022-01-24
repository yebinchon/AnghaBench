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
typedef  scalar_t__ u64 ;
struct zram {int /*<<< orphan*/  stats; int /*<<< orphan*/  init_lock; TYPE_1__* disk; scalar_t__ disksize; struct zcomp* comp; scalar_t__ limit_pages; } ;
struct zcomp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  part0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct zram*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct zram*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct zcomp*) ; 
 int /*<<< orphan*/  FUNC8 (struct zram*,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct zram *zram)
{
	struct zcomp *comp;
	u64 disksize;

	FUNC0(&zram->init_lock);

	zram->limit_pages = 0;

	if (!FUNC1(zram)) {
		FUNC6(&zram->init_lock);
		return;
	}

	comp = zram->comp;
	disksize = zram->disksize;
	zram->disksize = 0;

	FUNC5(zram->disk, 0);
	FUNC3(&zram->disk->part0, 0);

	FUNC6(&zram->init_lock);
	/* I/O operation under all of CPU are done so let's free */
	FUNC8(zram, disksize);
	FUNC2(&zram->stats, 0, sizeof(zram->stats));
	FUNC7(comp);
	FUNC4(zram);
}