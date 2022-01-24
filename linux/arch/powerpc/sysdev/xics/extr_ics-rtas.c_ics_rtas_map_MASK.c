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
struct ics {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned int XICS_IPI ; 
 unsigned int XICS_IRQ_SPURIOUS ; 
 int /*<<< orphan*/  handle_fasteoi_irq ; 
 int /*<<< orphan*/  ibm_get_xive ; 
 int /*<<< orphan*/  ics_rtas ; 
 int /*<<< orphan*/  ics_rtas_irq_chip ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int*,unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 

__attribute__((used)) static int FUNC5(struct ics *ics, unsigned int virq)
{
	unsigned int hw_irq = (unsigned int)FUNC4(virq);
	int status[2];
	int rc;

	if (FUNC0(hw_irq == XICS_IPI || hw_irq == XICS_IRQ_SPURIOUS))
		return -EINVAL;

	/* Check if RTAS knows about this interrupt */
	rc = FUNC3(ibm_get_xive, 1, 3, status, hw_irq);
	if (rc)
		return -ENXIO;

	FUNC1(virq, &ics_rtas_irq_chip, handle_fasteoi_irq);
	FUNC2(virq, &ics_rtas);

	return 0;
}