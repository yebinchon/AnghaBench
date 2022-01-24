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
struct msi_bitmap {int /*<<< orphan*/  lock; int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct msi_bitmap *bmp, unsigned int offset,
			    unsigned int num)
{
	unsigned long flags;

	FUNC1("msi_bitmap: freeing 0x%x at offset 0x%x\n",
		 num, offset);

	FUNC2(&bmp->lock, flags);
	FUNC0(bmp->bitmap, offset, num);
	FUNC3(&bmp->lock, flags);
}