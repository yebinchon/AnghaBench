#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pages_stored; int /*<<< orphan*/  compr_data_size; int /*<<< orphan*/  same_pages; int /*<<< orphan*/  huge_pages; } ;
struct zram {TYPE_2__* table; TYPE_1__ stats; int /*<<< orphan*/  mem_pool; } ;
struct TYPE_4__ {unsigned long flags; scalar_t__ ac_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  ZRAM_HUGE ; 
 int /*<<< orphan*/  ZRAM_IDLE ; 
 unsigned long ZRAM_LOCK ; 
 int /*<<< orphan*/  ZRAM_SAME ; 
 unsigned long ZRAM_UNDER_WB ; 
 int /*<<< orphan*/  ZRAM_WB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct zram*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct zram*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct zram*,size_t) ; 
 unsigned long FUNC6 (struct zram*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct zram*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct zram*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct zram*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct zram*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC12(struct zram *zram, size_t index)
{
	unsigned long handle;

#ifdef CONFIG_ZRAM_MEMORY_TRACKING
	zram->table[index].ac_time = 0;
#endif
	if (FUNC10(zram, index, ZRAM_IDLE))
		FUNC4(zram, index, ZRAM_IDLE);

	if (FUNC10(zram, index, ZRAM_HUGE)) {
		FUNC4(zram, index, ZRAM_HUGE);
		FUNC1(&zram->stats.huge_pages);
	}

	if (FUNC10(zram, index, ZRAM_WB)) {
		FUNC4(zram, index, ZRAM_WB);
		FUNC3(zram, FUNC5(zram, index));
		goto out;
	}

	/*
	 * No memory is allocated for same element filled pages.
	 * Simply clear same page flag.
	 */
	if (FUNC10(zram, index, ZRAM_SAME)) {
		FUNC4(zram, index, ZRAM_SAME);
		FUNC1(&zram->stats.same_pages);
		goto out;
	}

	handle = FUNC6(zram, index);
	if (!handle)
		return;

	FUNC11(zram->mem_pool, handle);

	FUNC2(FUNC7(zram, index),
			&zram->stats.compr_data_size);
out:
	FUNC1(&zram->stats.pages_stored);
	FUNC8(zram, index, 0);
	FUNC9(zram, index, 0);
	FUNC0(zram->table[index].flags &
		~(1UL << ZRAM_LOCK | 1UL << ZRAM_UNDER_WB));
}