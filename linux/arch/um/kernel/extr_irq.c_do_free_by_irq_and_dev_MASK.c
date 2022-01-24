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
struct irq_fd {unsigned int irq; void* id; int purge; scalar_t__ active; } ;
struct irq_entry {struct irq_fd** irq_array; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int IGNORE_DEV ; 
 int IGNORE_IRQ ; 
 int MAX_IRQ_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct irq_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_fd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
	struct irq_entry *irq_entry,
	unsigned int irq,
	void *dev,
	int flags
)
{
	int i;
	struct irq_fd *to_free;

	for (i = 0; i < MAX_IRQ_TYPE ; i++) {
		if (irq_entry->irq_array[i] != NULL) {
			if (
			((flags & IGNORE_IRQ) ||
				(irq_entry->irq_array[i]->irq == irq)) &&
			((flags & IGNORE_DEV) ||
				(irq_entry->irq_array[i]->id == dev))
			) {
				/* Turn off any IO on this fd - allows us to
				 * avoid locking the IRQ loop
				 */
				FUNC2(irq_entry->fd);
				to_free = irq_entry->irq_array[i];
				irq_entry->irq_array[i] = NULL;
				FUNC0(irq_entry);
				if (to_free->active)
					to_free->purge = true;
				else
					FUNC1(to_free);
			}
		}
	}
}