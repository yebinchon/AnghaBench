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

/* Variables and functions */
 unsigned long ICLR_IDLE ; 
 unsigned long IMAP_AID_SAFARI ; 
 unsigned long IMAP_NID_SAFARI ; 
 unsigned long IMAP_TID_JBUS ; 
 unsigned long IMAP_TID_UPA ; 
 unsigned int IMAP_VALID ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 struct irq_handler_data* FUNC2 (struct irq_data*) ; 
 scalar_t__ FUNC3 (struct irq_handler_data*) ; 
 unsigned int FUNC4 (unsigned long,unsigned long) ; 
 unsigned long FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct irq_data *data)
{
	struct irq_handler_data *handler_data;

	handler_data = FUNC2(data);
	if (FUNC3(handler_data)) {
		unsigned long cpuid, imap, val;
		unsigned int tid;

		cpuid = FUNC0(data->irq,
				       FUNC1(data));
		imap = handler_data->imap;

		tid = FUNC4(imap, cpuid);

		val = FUNC5(imap);
		val &= ~(IMAP_TID_UPA | IMAP_TID_JBUS |
			 IMAP_AID_SAFARI | IMAP_NID_SAFARI);
		val |= tid | IMAP_VALID;
		FUNC6(val, imap);
		FUNC6(ICLR_IDLE, handler_data->iclr);
	}
}