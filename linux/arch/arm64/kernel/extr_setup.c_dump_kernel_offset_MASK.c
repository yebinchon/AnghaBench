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
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_RANDOMIZE_BASE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KIMAGE_VADDR ; 
 int /*<<< orphan*/  PHYS_OFFSET ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int FUNC3(struct notifier_block *self, unsigned long v,
			      void *p)
{
	const unsigned long offset = FUNC1();

	if (FUNC0(CONFIG_RANDOMIZE_BASE) && offset > 0) {
		FUNC2("Kernel Offset: 0x%lx from 0x%lx\n",
			 offset, KIMAGE_VADDR);
		FUNC2("PHYS_OFFSET: 0x%llx\n", PHYS_OFFSET);
	} else {
		FUNC2("Kernel Offset: disabled\n");
	}
	return 0;
}