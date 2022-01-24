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
struct wake_irq {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *_wirq)
{
	struct wake_irq *wirq = _wirq;
	int res;

	/* Maybe abort suspend? */
	if (FUNC2(FUNC1(irq))) {
		FUNC4(wirq->dev, 0);

		return IRQ_HANDLED;
	}

	/* We don't want RPM_ASYNC or RPM_NOWAIT here */
	res = FUNC3(wirq->dev);
	if (res < 0)
		FUNC0(wirq->dev,
			 "wake IRQ with no resume: %i\n", res);

	return IRQ_HANDLED;
}