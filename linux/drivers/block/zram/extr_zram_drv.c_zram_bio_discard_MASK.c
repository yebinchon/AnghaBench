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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  notify_free; } ;
struct zram {TYPE_2__ stats; } ;
struct TYPE_3__ {size_t bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct zram*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zram*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct zram*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct zram *zram, u32 index,
			     int offset, struct bio *bio)
{
	size_t n = bio->bi_iter.bi_size;

	/*
	 * zram manages data in physical block size units. Because logical block
	 * size isn't identical with physical block size on some arch, we
	 * could get a discard request pointing to a specific offset within a
	 * certain physical block.  Although we can handle this request by
	 * reading that physiclal block and decompressing and partially zeroing
	 * and re-compressing and then re-storing it, this isn't reasonable
	 * because our intent with a discard request is to save memory.  So
	 * skipping this logical block is appropriate here.
	 */
	if (offset) {
		if (n <= (PAGE_SIZE - offset))
			return;

		n -= (PAGE_SIZE - offset);
		index++;
	}

	while (n >= PAGE_SIZE) {
		FUNC2(zram, index);
		FUNC1(zram, index);
		FUNC3(zram, index);
		FUNC0(&zram->stats.notify_free);
		index++;
		n -= PAGE_SIZE;
	}
}