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
struct msi_bitmap {int irq_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct msi_bitmap *bmp, int num)
{
	unsigned long flags;
	int offset, order = FUNC2(num);

	FUNC4(&bmp->lock, flags);

	offset = FUNC0(bmp->bitmap, bmp->irq_count, 0,
					    num, (1 << order) - 1);
	if (offset > bmp->irq_count)
		goto err;

	FUNC1(bmp->bitmap, offset, num);
	FUNC5(&bmp->lock, flags);

	FUNC3("msi_bitmap: allocated 0x%x at offset 0x%x\n", num, offset);

	return offset;
err:
	FUNC5(&bmp->lock, flags);
	return -ENOMEM;
}