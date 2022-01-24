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

/* Variables and functions */
 int fdc_busy ; 
 scalar_t__ fdc_nested ; 
 int /*<<< orphan*/  fdc_wait ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(void)
{
#ifdef DEBUG
	if (fdc_nested == 0)
		printk("fd: unmatched rel_fdc\n");
	printk("rel_fdc: fdc_busy %d fdc_nested %d\n",fdc_busy,fdc_nested);
#endif
	fdc_nested--;
	if (fdc_nested == 0) {
		fdc_busy = -1;
		FUNC1(&fdc_wait);
	}
}