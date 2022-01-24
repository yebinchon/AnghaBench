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
typedef  size_t u64 ;
struct zram {int /*<<< orphan*/  table; int /*<<< orphan*/  mem_pool; } ;

/* Variables and functions */
 size_t PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zram*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct zram *zram, u64 disksize)
{
	size_t num_pages = disksize >> PAGE_SHIFT;
	size_t index;

	/* Free all pages that are still in this zram device */
	for (index = 0; index < num_pages; index++)
		FUNC1(zram, index);

	FUNC2(zram->mem_pool);
	FUNC0(zram->table);
}