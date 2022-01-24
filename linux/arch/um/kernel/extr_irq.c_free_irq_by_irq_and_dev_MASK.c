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
struct irq_entry {struct irq_entry* next; } ;

/* Variables and functions */
 struct irq_entry* active_fds ; 
 int /*<<< orphan*/  FUNC0 (struct irq_entry*,unsigned int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  irq_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned int irq, void *dev)
{
	struct irq_entry *to_free;
	unsigned long flags;

	FUNC2(&irq_lock, flags);
	to_free = active_fds;
	while (to_free != NULL) {
		FUNC0(
			to_free,
			irq,
			dev,
			0
		);
		to_free = to_free->next;
	}
	FUNC1();
	FUNC3(&irq_lock, flags);
}