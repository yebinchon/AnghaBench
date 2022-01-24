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
struct uml_pt_regs {int dummy; } ;
struct siginfo {int dummy; } ;
struct irq_fd {scalar_t__ purge; int /*<<< orphan*/  events; } ;
struct irq_entry {struct irq_fd** irq_array; } ;

/* Variables and functions */
 int EINTR ; 
 int MAX_IRQ_TYPE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct irq_fd*,struct uml_pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_fd*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 

void FUNC6(int sig, struct siginfo *unused_si, struct uml_pt_regs *regs)
{
	struct irq_entry *irq_entry;
	struct irq_fd *irq;

	int n, i, j;

	while (1) {
		/* This is now lockless - epoll keeps back-referencesto the irqs
		 * which have trigger it so there is no need to walk the irq
		 * list and lock it every time. We avoid locking by turning off
		 * IO for a specific fd by executing os_del_epoll_fd(fd) before
		 * we do any changes to the actual data structures
		 */
		n = FUNC5();

		if (n <= 0) {
			if (n == -EINTR)
				continue;
			else
				break;
		}

		for (i = 0; i < n ; i++) {
			/* Epoll back reference is the entry with 3 irq_fd
			 * leaves - one for each irq type.
			 */
			irq_entry = (struct irq_entry *)
				FUNC3(i);
			for (j = 0; j < MAX_IRQ_TYPE ; j++) {
				irq = irq_entry->irq_array[j];
				if (irq == NULL)
					continue;
				if (FUNC4(i, irq->events) > 0)
					FUNC1(irq, regs);
				if (irq->purge) {
					irq_entry->irq_array[j] = NULL;
					FUNC2(irq);
				}
			}
		}
	}

	FUNC0();
}