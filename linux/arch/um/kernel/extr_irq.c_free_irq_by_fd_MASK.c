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
struct irq_entry {int dummy; } ;

/* Variables and functions */
 int IGNORE_DEV ; 
 int IGNORE_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct irq_entry*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct irq_entry* FUNC2 (int) ; 
 int /*<<< orphan*/  irq_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(int fd)
{
	struct irq_entry *to_free;
	unsigned long flags;

	FUNC3(&irq_lock, flags);
	to_free = FUNC2(fd);
	if (to_free != NULL) {
		FUNC0(
			to_free,
			-1,
			NULL,
			IGNORE_IRQ | IGNORE_DEV
		);
	}
	FUNC1();
	FUNC4(&irq_lock, flags);
}