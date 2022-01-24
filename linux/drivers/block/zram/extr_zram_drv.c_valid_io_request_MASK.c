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
typedef  int u64 ;
struct zram {unsigned int disksize; } ;
typedef  int sector_t ;

/* Variables and functions */
 unsigned int SECTOR_SHIFT ; 
 int ZRAM_LOGICAL_BLOCK_SIZE ; 
 int ZRAM_SECTOR_PER_LOGICAL_BLOCK ; 
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static inline bool FUNC1(struct zram *zram,
		sector_t start, unsigned int size)
{
	u64 end, bound;

	/* unaligned request */
	if (FUNC0(start & (ZRAM_SECTOR_PER_LOGICAL_BLOCK - 1)))
		return false;
	if (FUNC0(size & (ZRAM_LOGICAL_BLOCK_SIZE - 1)))
		return false;

	end = start + (size >> SECTOR_SHIFT);
	bound = zram->disksize >> SECTOR_SHIFT;
	/* out of range range */
	if (FUNC0(start >= bound || end > bound || start > end))
		return false;

	/* I/O request is valid */
	return true;
}