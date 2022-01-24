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
struct xive_irq_bitmap {int base; int count; int /*<<< orphan*/  list; void* bitmap; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct xive_irq_bitmap*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xive_irq_bitmaps ; 

__attribute__((used)) static int FUNC5(int base, int count)
{
	struct xive_irq_bitmap *xibm;

	xibm = FUNC1(sizeof(*xibm), GFP_KERNEL);
	if (!xibm)
		return -ENOMEM;

	FUNC4(&xibm->lock);
	xibm->base = base;
	xibm->count = count;
	xibm->bitmap = FUNC1(xibm->count, GFP_KERNEL);
	if (!xibm->bitmap) {
		FUNC0(xibm);
		return -ENOMEM;
	}
	FUNC2(&xibm->list, &xive_irq_bitmaps);

	FUNC3("Using IRQ range [%x-%x]", xibm->base,
		xibm->base + xibm->count - 1);
	return 0;
}