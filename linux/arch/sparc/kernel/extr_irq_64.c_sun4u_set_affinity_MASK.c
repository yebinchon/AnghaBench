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
struct irq_handler_data {unsigned long imap; unsigned long iclr; } ;
struct irq_data {int /*<<< orphan*/  irq; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 unsigned long ICLR_IDLE ; 
 unsigned long IMAP_AID_SAFARI ; 
 unsigned long IMAP_NID_SAFARI ; 
 unsigned long IMAP_TID_JBUS ; 
 unsigned long IMAP_TID_UPA ; 
 unsigned int IMAP_VALID ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,struct cpumask const*) ; 
 struct irq_handler_data* FUNC1 (struct irq_data*) ; 
 scalar_t__ FUNC2 (struct irq_handler_data*) ; 
 unsigned int FUNC3 (unsigned long,unsigned long) ; 
 unsigned long FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct irq_data *data,
			       const struct cpumask *mask, bool force)
{
	struct irq_handler_data *handler_data;

	handler_data = FUNC1(data);
	if (FUNC2(handler_data)) {
		unsigned long cpuid, imap, val;
		unsigned int tid;

		cpuid = FUNC0(data->irq, mask);
		imap = handler_data->imap;

		tid = FUNC3(imap, cpuid);

		val = FUNC4(imap);
		val &= ~(IMAP_TID_UPA | IMAP_TID_JBUS |
			 IMAP_AID_SAFARI | IMAP_NID_SAFARI);
		val |= tid | IMAP_VALID;
		FUNC5(val, imap);
		FUNC5(ICLR_IDLE, handler_data->iclr);
	}

	return 0;
}