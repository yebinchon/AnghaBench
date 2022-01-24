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
struct request_queue {int dummy; } ;
struct TYPE_2__ {unsigned int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;

/* Variables and functions */
 unsigned int SECTOR_SHIFT ; 
 unsigned int FUNC0 (struct request_queue*,unsigned int) ; 
 unsigned int FUNC1 (struct request_queue*) ; 
 unsigned int FUNC2 (struct request_queue*) ; 

__attribute__((used)) static inline unsigned FUNC3(struct request_queue *q,
				       struct bio *bio)
{
	unsigned sectors = FUNC0(q, bio->bi_iter.bi_sector);
	unsigned max_sectors = sectors;
	unsigned pbs = FUNC2(q) >> SECTOR_SHIFT;
	unsigned lbs = FUNC1(q) >> SECTOR_SHIFT;
	unsigned start_offset = bio->bi_iter.bi_sector & (pbs - 1);

	max_sectors += start_offset;
	max_sectors &= ~(pbs - 1);
	if (max_sectors > start_offset)
		return max_sectors - start_offset;

	return sectors & (lbs - 1);
}