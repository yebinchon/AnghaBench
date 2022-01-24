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
struct TYPE_2__ {unsigned int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef  unsigned int sector_t ;

/* Variables and functions */
 int EIO ; 
 unsigned int FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,unsigned int) ; 

__attribute__((used)) static inline int FUNC2(struct bio *bio, sector_t maxsector)
{
	unsigned int nr_sectors = FUNC0(bio);

	if (nr_sectors && maxsector &&
	    (nr_sectors > maxsector ||
	     bio->bi_iter.bi_sector > maxsector - nr_sectors)) {
		FUNC1(bio, maxsector);
		return -EIO;
	}
	return 0;
}