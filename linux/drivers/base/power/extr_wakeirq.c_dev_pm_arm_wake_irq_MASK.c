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
struct wake_irq {int status; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int WAKE_IRQ_DEDICATED_ALLOCATED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct wake_irq *wirq)
{
	if (!wirq)
		return;

	if (FUNC0(wirq->dev)) {
		if (wirq->status & WAKE_IRQ_DEDICATED_ALLOCATED &&
		    !FUNC3(wirq->dev))
			FUNC1(wirq->irq);

		FUNC2(wirq->irq);
	}
}